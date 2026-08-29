from schemas.farmer_profile import FarmerProfileCreate


def main():
    profile = FarmerProfileCreate(
        farmer_village="Pune Village",
        farmer_district="Pune",
        farmer_state="Maharashtra",
        farmer_pincode="411001",
        preferred_language="TELUGU",
        farm_acres=8,
        farmer_latitude=18.5204300,
        farmer_longitude=73.8567437
    )

    print(profile)
    print("\nAs dictionary:")
    print(profile.model_dump())


if __name__ == "__main__":
    main()