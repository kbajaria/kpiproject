CREATE table SAMPLE_DATA_ORDERS_FLATTENED AS (

WITH json_data AS (
    SELECT
        RECORD_CONTENT
    FROM
        SAMPLE_DATA_ORDERS
)

SELECT
    json_data.RECORD_CONTENT:address.city::string AS city,
    json_data.RECORD_CONTENT:address.state::string AS state,
    json_data.RECORD_CONTENT:address.zipcode::string AS zipcode,
    json_data.RECORD_CONTENT:itemid::string AS itemid,
    json_data.RECORD_CONTENT:orderid::string AS orderid,
    json_data.RECORD_CONTENT:ordertime::string AS ordertime
    
FROM
    json_data
);
