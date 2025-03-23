CREATE TABLE ramen_survey_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    timestamp VARCHAR(30),
    age VARCHAR(10),
    gender VARCHAR(10),
    nationality VARCHAR(20),
    food_choice_criteria VARCHAR(50),
    ramen_choice_criteria VARCHAR(50),
    ramen_purchase_style VARCHAR(100),
    reason_regular VARCHAR(100),
    reason_irregular VARCHAR(100),
    source_hyped_product VARCHAR(200),
    weekly_ramen_freq VARCHAR(10),
    purchase_type VARCHAR(30),
    post_covid_change VARCHAR(20),
    know_jinramen_flavors VARCHAR(5),
    preferred_jinramen_flavor VARCHAR(20)
);
SELECT * FROM ramen_survey_data LIMIT 10;
SELECT COUNT(*) FROM ramen_survey_data;
SELECT
  SUM(timestamp IS NULL) AS null_timestamp,
  SUM(age IS NULL) AS null_age,
  SUM(gender IS NULL) AS null_gender,
  SUM(food_choice_criteria IS NULL) AS null_food_criteria
FROM ramen_survey_data;
SELECT DISTINCT age FROM ramen_survey_data;
SELECT DISTINCT gender FROM ramen_survey_data;
SELECT
  preferred_jinramen_flavor,
  COUNT(*) AS count
FROM ramen_survey_data
WHERE preferred_jinramen_flavor IS NOT NULL
GROUP BY preferred_jinramen_flavor;
SELECT
  age,
  preferred_jinramen_flavor,
  COUNT(*) AS count
FROM ramen_survey_data
WHERE preferred_jinramen_flavor IS NOT NULL
GROUP BY age, preferred_jinramen_flavor
ORDER BY age;
SELECT
  gender,
  preferred_jinramen_flavor,
  COUNT(*) AS count
FROM ramen_survey_data
WHERE preferred_jinramen_flavor IS NOT NULL
GROUP BY gender, preferred_jinramen_flavor;
SELECT
  ramen_choice_criteria,
  COUNT(*) AS count
FROM ramen_survey_data
GROUP BY ramen_choice_criteria
ORDER BY count DESC;
SELECT
  reason_irregular,
  COUNT(*) AS count
FROM ramen_survey_data
GROUP BY reason_irregular
ORDER BY count DESC;
SELECT
  source_hyped_product,
  COUNT(*) AS count
FROM ramen_survey_data
GROUP BY source_hyped_product
ORDER BY count DESC;
SELECT
  ramen_purchase_style,
  ramen_choice_criteria,
  COUNT(*) AS count
FROM ramen_survey_data
GROUP BY ramen_purchase_style, ramen_choice_criteria
ORDER BY ramen_purchase_style;
SELECT
  post_covid_change,
  COUNT(*) AS count
FROM ramen_survey_data
GROUP BY post_covid_change;
