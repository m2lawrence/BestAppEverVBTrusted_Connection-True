CREATE TABLE [dbo].[Orders]
(
	[Order_ID] NCHAR(10) NOT NULL PRIMARY KEY, 
    [Cust_ID] NCHAR(10) NULL, 
    [Part_ID] NCHAR(10) NULL, 
    [Qty] NCHAR(10) NULL
)
