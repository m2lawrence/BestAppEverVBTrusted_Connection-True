CREATE TABLE [dbo].[Customer] (
    [Cust_ID] INT NOT NULL,
    [Name]    TEXT       NULL,
    [Address] TEXT       NULL,
    [Email]   TEXT       NULL,
    [Mobile]  TEXT       NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([Cust_ID] ASC)
);

