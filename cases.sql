CREATE TABLE January_Jobs AS 
SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
    ;

CREATE TABLE Febuary_Jobs AS 
SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2
    ;

CREATE TABLE March_Jobs AS 
SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3
    ;


