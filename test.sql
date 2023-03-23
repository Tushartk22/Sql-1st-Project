SELECT *
FROM users
LIMIT 30;

SELECT *
FROM progress
LIMIT 30;

SELECT email_domain, COUNT(email_domain)
FROM users
WHERE email_domain LIKE '%.edu'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 25;

SELECT email_domain, city, COUNT(city)
FROM users
WHERE email_domain LIKE '%edu' and city LIKE 'NEW YORK' 
GROUP BY 2
ORDER BY 3
LIMIT 25;

SELECT mobile_app, COUNT(mobile_app)
FROM users
GROUP BY 1;

SELECT sign_up_at,
   strftime('%H', sign_up_at)
FROM users
GROUP BY 1
LIMIT 20;

SELECT *
FROM users
INNER JOIN progress
ON users.user_id = progress.user_id
WHERE city LIKE 'New York'
GROUP BY email_domain
LIMIT 100;

SELECT *
FROM users
INNER JOIN progress
ON users.user_id = progress.user_id
WHERE city LIKE 'Chicago'
GROUP BY email_domain
LIMIT 100;