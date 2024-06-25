--Domains with IP ending in an odd number

SELECT domain, ip 
FROM domain_data 
WHERE CAST(SUBSTR(ip, -1) AS INTEGER) % 2 = 1;




--Domains with TLD .com and Name Server *.cloudflare.com


SELECT domain, ns_record 
FROM domain_data 
WHERE domain LIKE '%.com' AND ns_record LIKE '%cloudflare.com%';




--Domains with HTTP status code 200 and "news" in the <title> tag


SELECT domain, status_code, title 
FROM domain_data 
WHERE status_code = 200 AND title LIKE '%news%';
