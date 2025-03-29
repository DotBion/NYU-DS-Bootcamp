--TABLE INFO :
--SALES – Date, Order_id, Item_id, Customer_id, Quantity, Revenue
--ITEMS – Item_id, Item_name, price, department
--CUSTOMERS- customer_id, first_name,last_name,Address
--Small Dataset can be generated using chatgpt. 


--Pull total number of orders that were completed on 18th March 2023

SELECT COUNT(*) FROM SALES WHERE DATE='2023-03-18';


--Pull total number of orders that were completed on 18th March 2023 with the first name ‘John’ and last name Doe’


SELECT COUNT(*) FROM SALES S JOIN CUSTOMERS C ON S.Customer_id = C.CUstomer_id WHERE S.DATE='2023-03-18' AND C.FIRST_NAME='John' AND C.LAST_NAME='Doe';


--Pull total number of customers that purchased in January 2023 and the average amount spend per customer

SELECT C.CUSTOMER_ID,C.FIRST_NAME,C.LAST_NAME,AVG(REVENUE) AS AVG_COST FROM CUSTOMERS C JOIN SALES S ON C.CUSTOMER_ID=S.CUSTOMER_ID WHERE DATE BETWEEN '2023-03-01' AND '2023-03-31' GROUP BY C.CUSTOMER_ID;


--Pull the departments that generated less than $600 in 2022

SELECT I.DEPARTMENT, SUM(S.REVENUE) FROM SALES S JOIN ITEMS I ON S.Item_id=I.Item_id WHERE DATE LIKE "%-%-2022" GROUP BY I.Department HAVING SUM(S.Revenue) < 600;

--What is the most and least revenue we have generated by an order

SELECT MAX(REVENUE), MIN(REVENUE) FROM SALES;

--What were the orders that were purchased in our most lucrative order

SELECT Order_id, Item_id FROM SALES S JOIN ITEMS I ON S.Item_id=I.Item_id WHERE S.Revenue = (SELECT MAX(Revenue) FROM SALES);






