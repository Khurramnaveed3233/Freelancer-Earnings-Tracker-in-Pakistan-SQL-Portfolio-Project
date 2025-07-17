create database Freelancer_Earnings_Tracker_in_Pakistan

USE  Freelancer_Earnings_Tracker_in_Pakistan

CREATE TABLE freelancers (
    freelancer_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    country VARCHAR(50),
    join_date DATE,
    platform VARCHAR(100),
    experience_level VARCHAR(50)
);

INSERT INTO freelancers VALUES (1, 'Usman', 'Male', 'Pakistan', '2020-06-06', 'Upwork', 'Intermediate');
INSERT INTO freelancers VALUES (2, 'Nida', 'Female', 'Pakistan', '2022-08-27', 'PeoplePerHour', 'Beginner');
INSERT INTO freelancers VALUES (3, 'Sara', 'Female', 'Pakistan', '2019-02-28', 'PeoplePerHour', 'Intermediate');
INSERT INTO freelancers VALUES (4, 'Mariam', 'Male', 'Pakistan', '2022-11-26', 'PeoplePerHour', 'Intermediate');
INSERT INTO freelancers VALUES (5, 'Ayesha', 'Male', 'Pakistan', '2020-10-12', 'Upwork', 'Beginner');
INSERT INTO freelancers VALUES (6, 'Ali', 'Male', 'Pakistan', '2023-12-10', 'PeoplePerHour', 'Expert');
INSERT INTO freelancers VALUES (7, 'Ayesha', 'Female', 'Pakistan', '2023-01-26', 'Upwork', 'Expert');
INSERT INTO freelancers VALUES (8, 'Ayesha', 'Female', 'Pakistan', '2021-10-12', 'Fiverr', 'Intermediate');
INSERT INTO freelancers VALUES (9, 'Ayesha', 'Male', 'Pakistan', '2023-04-08', 'PeoplePerHour', 'Intermediate');
INSERT INTO freelancers VALUES (10, 'Ali', 'Female', 'Pakistan', '2023-09-12', 'Upwork', 'Beginner');



CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    freelancer_id INT,
    category VARCHAR(100),
    project_title VARCHAR(255),
    hourly_rate FLOAT,
    hours_worked INT,
    client_country VARCHAR(50),
    project_rating FLOAT,
    earnings_usd FLOAT,
    project_date DATE,
    FOREIGN KEY (freelancer_id) REFERENCES freelancers(freelancer_id)
);

INSERT INTO projects VALUES (1, 5, 'Web Development', 'Project 1', 23.58, 97, 'UAE', 4.0, 2287.26, '2023-05-15');
INSERT INTO projects VALUES (2, 9, 'Digital Marketing', 'Project 2', 9.75, 41, 'Germany', 4.9, 399.75, '2023-10-20');
INSERT INTO projects VALUES (3, 9, 'SEO', 'Project 3', 19.73, 9, 'Canada', 3.5, 177.57, '2023-04-08');
INSERT INTO projects VALUES (4, 7, 'Digital Marketing', 'Project 4', 9.33, 75, 'UAE', 4.6, 699.75, '2023-02-07');
INSERT INTO projects VALUES (5, 2, 'SEO', 'Project 5', 21.59, 18, 'UK', 4.0, 388.62, '2023-03-17');
INSERT INTO projects VALUES (6, 6, 'SEO', 'Project 6', 23.32, 65, 'USA', 3.6, 1515.80, '2024-06-13');
INSERT INTO projects VALUES (7, 10, 'Data Entry', 'Project 7', 14.84, 26, 'UK', 4.0, 385.84, '2021-01-26');
INSERT INTO projects VALUES (8, 4, 'Data Entry', 'Project 8', 28.00, 75, 'UK', 3.8, 2100.00, '2022-12-06');
INSERT INTO projects VALUES (9, 10, 'Content Writing', 'Project 9', 16.48, 39, 'UAE', 4.1, 642.72, '2021-01-12');
INSERT INTO projects VALUES (10, 7, 'Digital Marketing', 'Project 10', 17.81, 21, 'Germany', 4.6, 374.01, '2022-02-25');




CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    project_id INT,
    feedback_text VARCHAR(255),
    response_time_hrs FLOAT,
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

INSERT INTO reviews VALUES (1, 7, 'Great work', 12.1);
INSERT INTO reviews VALUES (2, 6, 'Needs improvement', 13.8);
INSERT INTO reviews VALUES (3, 9, 'Would hire again', 12.2);
INSERT INTO reviews VALUES (4, 6, 'Would hire again', 9.0);
INSERT INTO reviews VALUES (5, 9, 'Needs improvement', 15.3);
INSERT INTO reviews VALUES (6, 10, 'Excellent communication', 11.5);
INSERT INTO reviews VALUES (7, 1, 'Average performance', 15.6);
INSERT INTO reviews VALUES (8, 9, 'Needs improvement', 5.2);
INSERT INTO reviews VALUES (9, 2, 'Needs improvement', 19.3);
INSERT INTO reviews VALUES (10, 5, 'Great work', 20.4);


CREATE TABLE skills (
    skill_id INT PRIMARY KEY,
    freelancer_id INT,
    skill_name VARCHAR(100),
    skill_level VARCHAR(50),
    FOREIGN KEY (freelancer_id) REFERENCES freelancers(freelancer_id)
);

INSERT INTO skills VALUES (1, 2, 'HTML', 'Basic');
INSERT INTO skills VALUES (2, 8, 'Python', 'Intermediate');
INSERT INTO skills VALUES (3, 4, 'SQL', 'Basic');
INSERT INTO skills VALUES (4, 10, 'CSS', 'Intermediate');
INSERT INTO skills VALUES (5, 7, 'JavaScript', 'Advanced');
INSERT INTO skills VALUES (6, 5, 'Excel', 'Intermediate');
INSERT INTO skills VALUES (7, 6, 'Photoshop', 'Advanced');
INSERT INTO skills VALUES (8, 1, 'SEO', 'Intermediate');
INSERT INTO skills VALUES (9, 9, 'Python', 'Advanced');
INSERT INTO skills VALUES (10, 3, 'SQL', 'Basic');


CREATE TABLE earnings_summary (
    summary_id INT PRIMARY KEY,
    freelancer_id INT,
    month VARCHAR(7), -- format: YYYY-MM
    total_earnings_usd FLOAT,
    total_hours INT,
    FOREIGN KEY (freelancer_id) REFERENCES freelancers(freelancer_id)
);

INSERT INTO earnings_summary VALUES (1, 4, '2021-07', 1634.83, 132);
INSERT INTO earnings_summary VALUES (2, 9, '2023-12', 1713.45, 159);
INSERT INTO earnings_summary VALUES (3, 2, '2022-05', 1548.97, 75);
INSERT INTO earnings_summary VALUES (4, 1, '2023-08', 1999.10, 142);
INSERT INTO earnings_summary VALUES (5, 7, '2021-02', 1497.35, 100);
INSERT INTO earnings_summary VALUES (6, 5, '2024-03', 1230.20, 64);
INSERT INTO earnings_summary VALUES (7, 6, '2022-06', 1805.72, 122);
INSERT INTO earnings_summary VALUES (8, 8, '2023-03', 1340.40, 78);
INSERT INTO earnings_summary VALUES (9, 3, '2024-05', 1440.99, 96);
INSERT INTO earnings_summary VALUES (10, 10, '2021-11', 1302.55, 85);


CREATE TABLE platforms (
    platform_id INT PRIMARY KEY,
    platform_name VARCHAR(100),
    fee_percentage FLOAT
);

INSERT INTO platforms VALUES (1, 'Upwork', 10.0);
INSERT INTO platforms VALUES (2, 'Fiverr', 15.0);
INSERT INTO platforms VALUES (3, 'Freelancer', 12.0);
INSERT INTO platforms VALUES (4, 'PeoplePerHour', 9.0);
INSERT INTO platforms VALUES (5, 'Upwork_4', 10.5);
INSERT INTO platforms VALUES (6, 'Fiverr_5', 11.2);
INSERT INTO platforms VALUES (7, 'Freelancer_6', 14.0);
INSERT INTO platforms VALUES (8, 'PeoplePerHour_7', 8.5);
INSERT INTO platforms VALUES (9, 'Upwork_8', 13.3);
INSERT INTO platforms VALUES (10, 'Fiverr_9', 7.8);


CREATE TABLE category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100),
    popularity_index INT
);

INSERT INTO category VALUES (1, 'Web Development', 85);
INSERT INTO category VALUES (2, 'Graphic Design', 72);
INSERT INTO category VALUES (3, 'Content Writing', 66);
INSERT INTO category VALUES (4, 'SEO', 78);
INSERT INTO category VALUES (5, 'Data Entry', 59);
INSERT INTO category VALUES (6, 'Digital Marketing', 91);
INSERT INTO category VALUES (7, 'Web Development_6', 67);
INSERT INTO category VALUES (8, 'Graphic Design_7', 55);
INSERT INTO category VALUES (9, 'Content Writing_8', 43);
INSERT INTO category VALUES (10, 'SEO_9', 60);


CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_country VARCHAR(50),
    company_name VARCHAR(100),
    industry VARCHAR(100)
);

INSERT INTO clients VALUES (1, 'USA', 'ClientCo1', 'Tech');
INSERT INTO clients VALUES (2, 'UK', 'ClientCo2', 'Media');
INSERT INTO clients VALUES (3, 'Australia', 'ClientCo3', 'E-commerce');
INSERT INTO clients VALUES (4, 'Canada', 'ClientCo4', 'Finance');
INSERT INTO clients VALUES (5, 'Germany', 'ClientCo5', 'Health');
INSERT INTO clients VALUES (6, 'UAE', 'ClientCo6', 'Tech');
INSERT INTO clients VALUES (7, 'UK', 'ClientCo7', 'Finance');
INSERT INTO clients VALUES (8, 'Canada', 'ClientCo8', 'E-commerce');
INSERT INTO clients VALUES (9, 'USA', 'ClientCo9', 'Health');
INSERT INTO clients VALUES (10, 'Australia', 'ClientCo10', 'Tech');

===============================================================================================

--- 1. Which freelancers have the highest total earnings, and what is their average project rating?

SELECT 
    f.freelancer_id,
    f.name,
    SUM(e.total_earnings_usd) AS total_earned,
    AVG(p.project_rating) AS avg_rating
FROM freelancers f
JOIN earnings_summary e ON f.freelancer_id = e.freelancer_id
JOIN projects p ON f.freelancer_id = p.freelancer_id
GROUP BY f.freelancer_id, f.name
ORDER BY total_earned DESC;


--- 2. What is the average response time by project category?

SELECT 
    p.category,
    AVG(r.response_time_hrs) AS avg_response_time
FROM projects p
JOIN reviews r ON p.project_id = r.project_id
GROUP BY p.category;

--- 3. Which platform is associated with the highest average freelancer earnings per hour?

SELECT 
    f.platform,
    ROUND(SUM(e.total_earnings_usd) * 1.0 / NULLIF(SUM(e.total_hours), 0), 2) AS earnings_per_hour
FROM freelancers f
JOIN earnings_summary e ON f.freelancer_id = e.freelancer_id
GROUP BY f.platform
ORDER BY earnings_per_hour DESC;

select * from platform

--- 4. List top 5 freelancers with the most diverse skillsets.

SELECT TOP 5 
    f.name,
    COUNT(DISTINCT s.skill_name) AS total_skills
FROM freelancers f
JOIN skills s ON f.freelancer_id = s.freelancer_id
GROUP BY f.name
ORDER BY total_skills DESC;

-- 5. Which categories have the highest average project earnings and popularity index?

SELECT 
    p.category,
    ROUND(AVG(p.earnings_usd), 2) AS avg_project_earnings,
    c.popularity_index
FROM projects p
JOIN category c ON p.category = c.category_name
GROUP BY p.category, c.popularity_index
ORDER BY avg_project_earnings DESC;

-- 6. Find freelancers who joined in 2023 and earned above the average freelancer earnings.

SELECT f.name, f.join_date, SUM(e.total_earnings_usd) AS earnings
FROM freelancers f
JOIN earnings_summary e ON f.freelancer_id = e.freelancer_id
WHERE YEAR(f.join_date) = 2023
GROUP BY f.name, f.join_date
HAVING SUM(e.total_earnings_usd) > (
    SELECT AVG(total_earnings_usd) FROM earnings_summary
);

--- 7. Show the monthly trend of total freelancer earnings

SELECT 
    month,
    SUM(total_earnings_usd) AS monthly_earnings
FROM earnings_summary
GROUP BY month
ORDER BY month;

-- 8. Which clients hired freelancers with the highest average ratings?

SELECT 
    p.client_country,
    ROUND(AVG(p.project_rating),2) AS avg_rating
FROM projects p
GROUP BY p.client_country
ORDER BY avg_rating DESC;

-- 9. Rank freelancers by their average earnings per hour using window functions.

SELECT 
    f.name,
    ROUND(SUM(e.total_earnings_usd) * 1.0 / NULLIF(SUM(e.total_hours), 0), 2) AS earnings_per_hour,
    RANK() OVER (ORDER BY SUM(e.total_earnings_usd) * 1.0 / NULLIF(SUM(e.total_hours), 0) DESC) AS rank
FROM freelancers f
JOIN earnings_summary e ON f.freelancer_id = e.freelancer_id
GROUP BY f.name;

-- 10. For each freelancer, compare their latest month’s earnings with their previous month.

WITH MonthlyEarnings AS (
    SELECT 
        freelancer_id,
        month,
        total_earnings_usd,
        LAG(total_earnings_usd) OVER (PARTITION BY freelancer_id ORDER BY month) AS prev_month_earnings
    FROM earnings_summary
)
SELECT 
    freelancer_id,
    month,
    total_earnings_usd,
    prev_month_earnings,
    total_earnings_usd - prev_month_earnings AS earnings_change
FROM MonthlyEarnings
WHERE prev_month_earnings IS NOT NULL;


