CREATE TABLE [dbo].[claim_details] (
    [userid]       INT          NOT NULL,
    [firstname]    VARCHAR (50) NULL,
    [lastname]     VARCHAR (50) NULL,
    [policynumber] INT          NOT NULL,
    [typeofclaim]  VARCHAR (50) NULL,
    [amount]       INT          NULL,
    [description]  VARCHAR (50) NULL
);

