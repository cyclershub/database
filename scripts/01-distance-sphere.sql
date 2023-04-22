CREATE OR REPLACE FUNCTION haversine(lat1 float, lon1 float, lat2 float, lon2 float) RETURNS float AS $$
DECLARE
    R float := 6371.0; -- Earth's radius in kilometers
    dLat float := radians(lat2 - lat1);
    dLon float := radians(lon2 - lon1);
    a float := sin(dLat / 2.0) * sin(dLat / 2.0) + cos(radians(lat1)) * cos(radians(lat2)) * sin(dLon / 2.0) * sin(dLon / 2.0);
    c float := 2.0 * atan2(sqrt(a), sqrt(1.0 - a));
BEGIN
    RETURN R * c;
END;
$$ LANGUAGE plpgsql IMMUTABLE;