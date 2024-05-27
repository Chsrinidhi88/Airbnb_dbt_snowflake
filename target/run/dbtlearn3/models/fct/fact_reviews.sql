-- back compat for old kwarg name
  
  begin;
    

        insert into AIRBNB.DEV.fact_reviews ("LISTING_ID", "REVIEW_DATE", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "LISTING_ID", "REVIEW_DATE", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fact_reviews__dbt_tmp
        );
    commit;