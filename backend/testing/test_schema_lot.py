from schemas.lot import LotCreate

def main():
    profile = LotCreate(
        crop_id=1,
        quantity=5.5,
        unit="QUINTAL",
        harvest_date="2026-08-30",
        expected_price=-100
    )
    print(profile)

if __name__ == "__main__":
    main()