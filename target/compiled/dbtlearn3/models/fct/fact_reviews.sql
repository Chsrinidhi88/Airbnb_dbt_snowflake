
WITH  __dbt__cte__src_reviews as (
with raw_reviews as (
select * from
airbnb.raw.raw_reviews

)
select listing_id,
date as review_date,
comments as review_text,
sentiment as review_sentiment
from raw_reviews
), src_reviews AS (
 SELECT * FROM __dbt__cte__src_reviews
)
SELECT * FROM src_reviews
WHERE review_text is not null

 AND review_date > (select max(review_date) from AIRBNB.DEV.fact_reviews)
