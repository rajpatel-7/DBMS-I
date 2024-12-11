--LAB 2
--PART-A
--Retrieve all data from table DEPOSIT. 
SELECT*FROM DEPOSITE
--Retrieve all data from table BORROW.
SELECT*FROM BORROW
--Retrieve all data from table CUSTOMERS.
SELECT*FROM CUSTOMERS
--Display Account No, Customer Name & Amount from DEPOSIT.
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE
-- Display Loan No, Amount from BORROW.
SELECT LOANNO,AMOUNT FROM BORROW
--Display loan details of all customers who belongs to �ANDHERI� branch from borrow table.
SELECT * FROM BORROW WHERE BNAME='ANDHERI'
--Give account no and amount of depositor, whose account no is equals to 106 from deposit table. 
SELECT ACTNO,AMOUNT FROM DEPOSITE WHERE ACTNO=106
--Give name of borrowers having amount greater than 5000 from borrow table. 
SELECT BNAME FROM BORROW WHERE AMOUNT>5000
--Give name of customers who opened account after date '1-12-96' from deposit table. 
SELECT CNAME FROM DEPOSITE WHERE ADATE>'1996-12-01'
--Display name of customers whose account no is less than 105 from deposit table.
SELECT CNAME FROM DEPOSITE WHERE ACTNO<105
--Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (OR) 
SELECT CNAME FROM CUSTOMERS WHERE CITY='NAGPUR' OR CITY='DELHI'
--Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (IN)
SELECT CNAME FROM CUSTOMERS WHERE CITY IN('NAGPUR','DELHI')
--Display name of customers with branch whose amount is greater than 4000 and account no is less than105 from deposit table.SELECT CNAME FROM DEPOSITE WHERE AMOUNT>4000 AND ACTNO<105 
--Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrowtable. (AND)
SELECT CNAME FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000
--Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table.(BEETWEEN)
SELECT CNAME FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000
--Find all depositors who do not belongs to �ANDHERI� branch from deposit table.SELECT CNAME FROM DEPOSITE WHERE BNAME<>'ANDHERI'--Display Account No, Customer Name & Amount of such customers who belongs to �AJNI�, �KAROLBAGH�Or �M.G.ROAD� and Account No is less than 104 from deposit table.SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE WHERE BNAME IN('AJNI','KAROLBAGH','MGROAD') AND ACTNO<104.--PART B--SELECT CNAME FROM DEPOSITE WHERE BNAMESELECT TOP 5* FROM DEPOSITE-- Display all the details of first three depositors whose amount is greater than 1000.SELECT TOP 3* FROM DEPOSITE WHERE AMOUNT>1000--Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to�ANDHERI� from borrow table.SELECT TOP 5 LOANNO,CNAME FROM  BORROW WHERE BNAME <>'ANDHERI'--Retrieve all unique cities using DISTINCT. (Use Customers Table)SELECT DISTINCT CITY FROM CUSTOMERS--Retrieve all unique branches using DISTINCT. (Use Branch Table)SELECT DISTINCT BNAME FROM BRANCH--PART-C--Retrieve top 50% record from table BORROW.SELECT TOP 50 PERCENT * FROM BORROW--Display top 10% amount from table DEPOSIT.SELECT TOP 10 PERCENT AMOUNT FROM DEPOSITE--Display top 25% customer who deposited more than 5000.SELECT TOP 25 PERCENT CNAME FROM DEPOSITE WHERE AMOUNT>5000--Retrieve first 10% Loan Amounts.SELECT TOP 10 PERCENT AMOUNT FROM BORROW