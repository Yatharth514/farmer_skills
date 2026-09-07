async def get_all_offers(conn,farmer_id:int,offset:int,limit:int):
    return await conn.fetch(
        """SELECT o.offer_id,
        o.buyer_id,
        o.offer_price,
        o.quantity_accepted,
        o.unit,
        o.pickup_date,
        o.payment_terms,
        o.status,
        o.created_at,
        l.lot_id,
        l.crop_id,
        l.quantity AS lot_quantity,
        l.expected_price,
        l.harvest_date,
        c.crop_name,
        u.full_name,
        b.business_name,
        b.buyer_type,
        b.district,
        b.state,
        b.is_verified
        FROM offers o
        INNER JOIN lots l
        ON o.lot_id=l.lot_id
        INNER JOIN crop c
        ON c.crop_id=l.crop_id
        INNER JOIN buyers b
        ON b.buyer_id=o.buyer_id
        INNER JOIN users u
        ON u.user_id=b.buyer_id
        WHERE l.farmer_id = $1
        ORDER BY o.created_at DESC
        LIMIT $2
        OFFSET $3""",farmer_id,limit,offset
    )

async def get_offer_for_the_lot(conn,farmer_id:int,lot_id:int,limit:int,offset:int):
    return await conn.fetch(
        """SELECT o.offer_id,
        o.buyer_id,
        o.offer_price,
        o.quantity_accepted,
        o.unit,
        o.pickup_date,
        o.payment_terms,
        o.status,
        o.created_at,
        l.lot_id,
        l.crop_id,
        l.quantity AS lot_quantity,
        l.expected_price,
        l.harvest_date,
        c.crop_name,
        u.full_name,
        b.business_name,
        b.buyer_type,
        b.district,
        b.state,
        b.is_verified
        FROM offers o
        INNER JOIN lots l
        ON o.lot_id=l.lot_id
        INNER JOIN crop c
        ON c.crop_id=l.crop_id
        INNER JOIN buyers b
        ON b.buyer_id=o.buyer_id
        INNER JOIN users u
        ON u.user_id=b.buyer_id
        WHERE o.lot_id = $1
        AND l.farmer_id = $2
        ORDER BY o.created_at DESC
        LIMIT $3
        OFFSET $4""",lot_id,farmer_id,limit,offset
    )

async def get_lot_from_offer_id(conn,offer_id:int):
    return await conn.fetchrow(
        """SELECT
        l.farmer_id AS farmer_id,
		l.lot_id AS lot_id,
        l.lot_status,
        o.offer_id,
		o.status AS offer_status,
        o.buyer_id
        FROM offers o 
        INNER JOIN lots l
        ON o.lot_id=l.lot_id
        WHERE o.offer_id = $1""",offer_id
    )

async def reject_the_other_offers(conn,offer_id:int,lot_id:int):
    return await conn.execute(
        """UPDATE offers
        SET status = $1
        WHERE lot_id = $2
        AND offer_id != $3
        AND status = $4""","REJECTED",lot_id,offer_id,"PENDING"
    )

async def accept_the_offer(conn,offer_id:int):
    return await conn.execute(
        """UPDATE offers
        SET status = $1
        WHERE offer_id = $2
        AND status = $3""","ACCEPTED",offer_id,"PENDING"
    )

async def reject_the_offer(conn,offer_id:int):
    return await conn.execute(
        """UPDATE offers
        SET status = $1
        WHERE offer_id = $2
        AND status = $3""","REJECTED",offer_id,"PENDING"
    )