/*
    How many stations are within 1km of Meyerson Hall?

    Your query should have a single record with a single attribute, the number
    of stations (num_stations).
*/

-- Enter your SQL query here

select count(*) as num_stations
from indego.station_statuses
where public.st_dwithin(
    public.st_setsrid(public.st_makepoint(-75.192584, 39.952415), 4326),
    geog,
    1000
);
