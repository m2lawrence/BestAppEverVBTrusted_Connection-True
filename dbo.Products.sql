CREATE TABLE [dbo].[Products] (
    [Prod_ID]     NCHAR (10) NOT NULL,
    [Cust_ID]     NCHAR (10) NULL,    
    [Quantity]    NCHAR (10) NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Prod_ID] ASC)
);

