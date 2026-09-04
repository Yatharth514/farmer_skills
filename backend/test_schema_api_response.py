from schemas.mandi_price import MandiInfo

def main():
    info=MandiInfo(
    market="Sindi (Selu)",
    district="Wardha",
    commodity="Wheat",
    arrival_date="03/09/2026",
    min_price=2400,
    max_price=2580,
    modal_price=2500
    )
    print(info)
    
if __name__ == "__main__":
    main()