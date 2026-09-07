from haversine import haversine, Unit


def calculate_distance(
    farmer_latitude,
    farmer_longitude,
    buyer_latitude,
    buyer_longitude
):
    farmer_coordinates = (
        float(farmer_latitude),
        float(farmer_longitude)
    )

    buyer_coordinates = (
        float(buyer_latitude),
        float(buyer_longitude)
    )

    distance = haversine(
        farmer_coordinates,
        buyer_coordinates,
        unit=Unit.KILOMETERS
    )

    return distance