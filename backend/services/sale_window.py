from sklearn.linear_model import LinearRegression 
import numpy as np 
 
 
def predictor(day_offsets: list, prices: list, slope_threshold: float, r_squared_threshold: float = 0.5): 
    if len(day_offsets) != len(prices):
        raise ValueError("day_offsets and prices must have the same number of values")
 
    X = np.array(day_offsets).reshape(-1, 1) 
    y = np.array(prices) 
 
    model = LinearRegression() 
    model.fit(X, y) 
 
    slope = model.coef_[0] 
    intercept = model.intercept_ 
    r_squared = model.score(X, y) 
 
    if abs(slope) <= slope_threshold:
        result = "STABLE"
        recommendation = "STABLE"

    elif r_squared < r_squared_threshold:
        result = "UNCLEAR"
        recommendation = "STABLE"

    elif slope > 0:
        result = "RISING"
        recommendation = "HOLD"

    else:
        result = "FALLING"
        recommendation = "SELL"
 
    return { 
        "result": result, 
        "slope": round(float(slope), 2), 
        "intercept": round(float(intercept), 2), 
        "r_squared": round(float(r_squared), 2), 
        "recommendation": recommendation, 
       
    } 