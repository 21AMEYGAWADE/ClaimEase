CREATE TABLE [dbo].[registration_details] (
    [firstname] VARCHAR (50) NOT NULL,
    [gmail]     VARCHAR (50) NOT NULL,
    [password]  VARCHAR (50) NOT NULL,
    [userid]    INT          NOT NULL,
    CONSTRAINT [PK_registration_details] PRIMARY KEY CLUSTERED ([userid] ASC)
);

