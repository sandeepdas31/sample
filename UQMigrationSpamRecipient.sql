CREATE TABLE IF NOT EXISTS dbo."UQMigrationSpamRecipient"
(   
    "SpamRecipientId"          INTEGER                                      NOT NULL,
    "CustomerId"               INTEGER                                      NOT NULL,
    "DomainId"                 INTEGER                                      NOT NULL,
    "EmailAddress"             VARCHAR(255) COLLATE dbo.case_insensitive    NOT NULL,
    "SpamGroupId"              INTEGER                                           NULL,
    "Excluded"                 BOOLEAN                                       NOT NULL,
    "DateCreated"              TIMESTAMP(3)                                  NOT NULL,
    "DateAmended"              TIMESTAMP(3)                                  NOT NULL,
    "WhoAmended_nt_username"   VARCHAR(50)  COLLATE dbo.case_insensitive     NOT NULL,
    "WhoAmended_hostname"      VARCHAR(50)  COLLATE dbo.case_insensitive     NOT NULL 
);