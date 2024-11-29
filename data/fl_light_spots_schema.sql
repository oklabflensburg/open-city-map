-- TABELLE LICHTPUNKTSTANDORTE FLENSBURG
DROP TABLE IF EXISTS fl_light_spots CASCADE;

CREATE TABLE IF NOT EXISTS fl_light_spots (
    id SERIAL PRIMARY KEY,
    street_key VARCHAR,
    street_name VARCHAR,
    housenumber VARCHAR,
    municipality_name VARCHAR,
    easting NUMERIC,
    northing NUMERIC,
    wkb_geometry GEOMETRY(POINT, 4326)
);


-- GEOMETRY INDEX
CREATE INDEX IF NOT EXISTS idx_fl_light_spots_geometry ON fl_light_spots USING GIST (wkb_geometry);
