from services.sale_window import predictor

def main():
    result=predictor(
    day_offsets=[0, 1, 2, 3, 4, 5, 6],
    prices=[1000, 1500, 900, 1600, 800, 1400, 1100],
    slope_threshold=20
    )
    print(result)

if __name__ == "__main__":
    main()
    
    