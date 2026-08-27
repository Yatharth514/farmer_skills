CREATE DOMAIN phone_check AS VARCHAR(10)
CHECK(VALUE~'^[0-9]{10}$');

CREATE TYPE role_check AS ENUM('FARMER','BUYER','ADMIN');
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    phone_number phone_check NOT NULL UNIQUE,
    user_role role_check NOT NULL ,
    full_name          VARCHAR(100) NOT NULL,
    is_phone_verified  BOOLEAN NOT NULL DEFAULT FALSE,
    is_active          BOOLEAN NOT NULL DEFAULT TRUE,
    last_login_at      TIMESTAMPTZ,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX idx_users_role ON users(user_role);

CREATE TYPE preference AS ENUM('HINDI','ENGLISH','MARATHI');
CREATE TABLE farmer_profile(
    farmer_id  INT PRIMARY KEY REFERENCES users(user_id),
    farmer_village VARCHAR(50) NOT NULL,
    farmer_district VARCHAR(50) NOT NULL,
    farmer_state VARCHAR(50) DEFAULT 'Maharashtra' NOT NULL,
    farmer_pincode VARCHAR(6) NOT NULL
    CHECK (farmer_pincode ~ '^[0-9]{6}$'),
    preferred_language preference NOT NULL DEFAULT 'MARATHI',
    farm_acres DECIMAL(6,2) NOT NULL CHECK (farm_acres > 0),
    farmer_latitude DECIMAL(10,7) NOT NULL
        CHECK (farmer_latitude BETWEEN 15.5 AND 22.1),
    farmer_longitude DECIMAL(10,7) NOT NULL
        CHECK (farmer_longitude BETWEEN 72.6 AND 80.9)
);
CREATE TYPE buyer_check AS ENUM('INDIVIDUAL','INSTITUTIONAL','MANDI_TRADER','PROCESSOR');
CREATE TABLE buyers(
    buyer_id INT PRIMARY KEY REFERENCES users(user_id),
    business_name VARCHAR(100) ,
    buyer_type buyer_check NOT NULL ,
    district VARCHAR(50) NOT NULL,
    state  VARCHAR(50) DEFAULT 'Maharashtra' NOT NULL,
    is_verified BOOLEAN NOT NULL DEFAULT FALSE,
    payment_reliability_score NUMERIC CHECK (payment_reliability_score BETWEEN 0 AND 100)
);

CREATE TYPE unit_check AS 
ENUM('QUINTAL','KG');
CREATE TABLE crop(
    crop_id SERIAL PRIMARY KEY,
    crop_name VARCHAR(100) NOT NULL UNIQUE,
    unit unit_check NOT NULL 
);

CREATE TABLE mandis(
    mandi_id SERIAL PRIMARY KEY,
    mandi_name VARCHAR(100) NOT NULL UNIQUE ,
    district VARCHAR(50) NOT NULL,
    state  VARCHAR(50) DEFAULT 'Maharashtra' NOT NULL,
    latitude DECIMAL(10,7) NOT NULL
        CHECK (latitude BETWEEN 15.5 AND 22.1),
    longitude DECIMAL(10,7) NOT NULL
        CHECK (longitude BETWEEN 72.6 AND 80.9)
);

CREATE TABLE mandi_price(
    price_id SERIAL PRIMARY KEY,
    mandi_id INT NOT NULL,
    FOREIGN KEY (mandi_id) REFERENCES mandis(mandi_id),
    crop_id INT NOT NULL ,
    FOREIGN KEY (crop_id) REFERENCES crop(crop_id),
    price_date DATE NOT NULL,
    min_price DECIMAL(10,2) NOT NULL,

    max_price DECIMAL(10,2) NOT NULL,

    modal_price DECIMAL(10,2) NOT NULL,

    arrival_volume DECIMAL(12,2),

    CONSTRAINT valid_price_range
        CHECK (
            min_price >= 0
            AND max_price >= min_price
            AND modal_price >= min_price
            AND modal_price <= max_price
        ),

    CONSTRAINT valid_arrival_volume
        CHECK (arrival_volume IS NULL OR arrival_volume >= 0),

    CONSTRAINT unique_mandi_crop_date
        UNIQUE (mandi_id, crop_id, price_date)
);



CREATE TYPE status_check AS ENUM('GRADING_PENDING','OFFER_PENDING','SOLD','LISTED','EXPIRED');
CREATE TYPE grade_check AS ENUM('A','B','C','UNGRADED');

CREATE TABLE lots(
    lot_id SERIAL PRIMARY KEY ,
    farmer_id INT NOT NULL ,
    FOREIGN KEY (farmer_id) REFERENCES farmer_profile(farmer_id),
    crop_id INT NOT NULL,
    FOREIGN KEY (crop_id) REFERENCES crop(crop_id),
    quantity DECIMAL(10,2) NOT NULL CHECK (quantity > 0),
    unit unit_check NOT NULL ,
    harvest_date DATE NOT NULL ,
    grade grade_check NOT NULL DEFAULT 'UNGRADED',
    lot_status status_check NOT NULL DEFAULT 'GRADING_PENDING',
    expected_price DECIMAL(10,2) NOT NULL CHECK (expected_price >= 0),
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now() 
);


CREATE TABLE quality_assessment(
    assessment_id SERIAL PRIMARY KEY,
    lot_id INT NOT NULL ,
    FOREIGN KEY(lot_id) REFERENCES lots(lot_id),
    assessed_by INT REFERENCES users(user_id),
    grade grade_check NOT NULL DEFAULT 'UNGRADED',
    assessment_notes VARCHAR(100),
    assessed_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TYPE offer_status AS ENUM('PENDING','REJECTED','ACCEPTED','COUNTERED','EXPIRED');

CREATE TABLE offers(
    offer_id SERIAL PRIMARY KEY ,
    lot_id INT NOT NULL,
    FOREIGN KEY(lot_id) REFERENCES lots(lot_id),
    buyer_id INT NOT NULL ,
    FOREIGN KEY(buyer_id) REFERENCES buyers(buyer_id),
    offer_price DECIMAL(10,2) NOT NULL CHECK (offer_price >= 0),
    quantity_accepted DECIMAL(10,2) NOT NULL CHECK (quantity_accepted > 0),
    unit unit_check NOT NULL ,
    pickup_date DATE NOT NULL ,
    payment_terms VARCHAR(100) NOT NULL,
    status offer_status NOT NULL DEFAULT 'PENDING' ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TYPE transaction_status AS ENUM(
    'CONFIRMED',
    'PICKED_UP',
    'DELIVERED',
    'COMPLETED',
    'CANCELLED'
);

CREATE TABLE transactions(
    transaction_id SERIAL PRIMARY KEY,

    lot_id INT NOT NULL,

    offer_id INT NOT NULL,

    farmer_id INT NOT NULL,

    buyer_id INT NOT NULL,

    final_price DECIMAL(12,2) NOT NULL
        CHECK (final_price >= 0),

    final_quantity DECIMAL(12,2) NOT NULL
        CHECK (final_quantity > 0),

    transaction_status transaction_status NOT NULL
        DEFAULT 'CONFIRMED',

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT now(),

    CONSTRAINT fk_transaction_lot
        FOREIGN KEY (lot_id)
        REFERENCES lots(lot_id),

    CONSTRAINT fk_transaction_offer
        FOREIGN KEY (offer_id)
        REFERENCES offers(offer_id),

    CONSTRAINT fk_transaction_farmer
        FOREIGN KEY (farmer_id)
        REFERENCES farmer_profile(farmer_id),

    CONSTRAINT fk_transaction_buyer
        FOREIGN KEY (buyer_id)
        REFERENCES buyers(buyer_id),

    CONSTRAINT unique_transaction_offer
        UNIQUE (offer_id)
);
CREATE TYPE payment_status AS ENUM('PAID','PENDING','OVERDUE');
CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    transaction_id INT NOT NULL ,
    FOREIGN KEY(transaction_id) REFERENCES transactions(transaction_id),
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    status payment_status NOT NULL,
    expected_payment_date DATE NOT NULL ,
    paid_at TIMESTAMPTZ,
    CONSTRAINT valid_paid_at CHECK (
    (status = 'PAID' AND paid_at IS NOT NULL) OR (status <> 'PAID' AND paid_at IS NULL)
    )
);
CREATE TYPE log_status AS ENUM('QUOTED','BOOKED','DELIVERED','IN_TRANSIT');
CREATE TABLE logistic_request(
    request_id SERIAL PRIMARY KEY,
    lot_id INT NOT NULL ,
    FOREIGN KEY(lot_id) REFERENCES lots(lot_id),
    pickup_location VARCHAR(100) NOT NULL,
    drop_location VARCHAR(100) NOT NULL,
    estimated_cost DECIMAL(10,2) NOT NULL CHECK (estimated_cost >= 0),
    estimated_distance DECIMAL(10,2) NOT NULL CHECK (estimated_distance >= 0),
    status log_status NOT NULL

);

CREATE TYPE dispute_status AS ENUM(
    'OPEN',
    'UNDER_REVIEW',
    'RESOLVED'
);

CREATE TYPE alert_type AS ENUM(
    'NEW_OFFER',
    'PRICE_THRESHOLD',
    'GRADING_COMPLETE',
    'PAYMENT_OVERDUE'
);

CREATE TABLE disputes(
    dispute_id SERIAL PRIMARY KEY,

    transaction_id INT NOT NULL,

    raised_by INT NOT NULL,

    complaint_text TEXT NOT NULL,

    status dispute_status NOT NULL
        DEFAULT 'OPEN',

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT now(),

    resolved_at TIMESTAMPTZ,

    CONSTRAINT fk_dispute_transaction
        FOREIGN KEY (transaction_id)
        REFERENCES transactions(transaction_id),

    CONSTRAINT fk_dispute_user
        FOREIGN KEY (raised_by)
        REFERENCES users(user_id),

    CONSTRAINT valid_resolved_at
    CHECK (
    (status = 'RESOLVED' AND resolved_at IS NOT NULL)
    OR
    (status <> 'RESOLVED' AND resolved_at IS NULL)
    )
);

CREATE TABLE alerts(
    alert_id SERIAL PRIMARY KEY,

    user_id INT NOT NULL,

    alert_type alert_type NOT NULL,

    message TEXT NOT NULL,

    is_read BOOLEAN NOT NULL
        DEFAULT FALSE,

    created_at TIMESTAMPTZ NOT NULL
        DEFAULT now(),

    CONSTRAINT fk_alert_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
);


CREATE TABLE fpos(
    fpo_id SERIAL PRIMARY KEY,

    fpo_name VARCHAR(150) NOT NULL,

    registration_number VARCHAR(100) UNIQUE,

    village VARCHAR(50) NOT NULL,

    district VARCHAR(50) NOT NULL,

    state VARCHAR(50) NOT NULL DEFAULT 'Maharashtra',

    pincode VARCHAR(6) NOT NULL
        CHECK (pincode ~ '^[0-9]{6}$'),

    contact_phone phone_check NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE fpo_members(
    fpo_id INT NOT NULL,

    farmer_id INT NOT NULL,

    joined_at TIMESTAMPTZ NOT NULL DEFAULT now(),

    membership_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',

    CONSTRAINT pk_fpo_members
        PRIMARY KEY (fpo_id, farmer_id),

    CONSTRAINT fk_fpo_members_fpo
        FOREIGN KEY (fpo_id)
        REFERENCES fpos(fpo_id),

    CONSTRAINT fk_fpo_members_farmer
        FOREIGN KEY (farmer_id)
        REFERENCES farmer_profile(farmer_id)
);
