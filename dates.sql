SELECT '2023-02-19'::DATE,
    ;
SELECT 
    job_title_short AS title,
    job_location AS job_location,
    job_posted_Date :: DATE AS DATEFROM
    FROM
    job_postings_fact
    
    LIMIT 5;
SELECT
        job_title_short AS title,
    job_location AS job_location,
    job_posted_Date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time  
    FROM
    job_postings_fact
    
    LIMIT 5;

SELECT 
job_title_short AS title,
    job_location AS job_location,
    job_posted_Date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time  ,
    EXTRACT(MONTH FROM job_posted_Date) AS date_month
    FROM 
    job_postings_fact
    LIMIT 5;

SELECT  
    count(job_id),
    EXTRACT(MONTH FROM job_posted_date) as month 
    FROM
    job_postings_fact
    WHERE job_title_short = 'Data Analyst'
GROUP BY
month;

SELECT  
    COUNT(job_id) AS number_of_jobs,
    
    CASE
        WHEN job_location = 'Anywhere' THEN 'REMOTE'
        WHEN job_location = 'New Yourk, NY' THEN 'Local'
        ELSE
        'ONSITE'
        END AS location_category
FROM    
    job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category;

/*
Label new column as follows:
- 'Anywhere ' jobs as 'REmote'

*/