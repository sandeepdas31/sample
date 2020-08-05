CREATE TABLE IF NOT EXISTS dbo."TrialStatus"
(   
    "CustomerId"        INTEGER                                      NOT NULL,
    "DateStarted"       TIMESTAMP(3)                                 NOT NULL,
    "DateExpire"        TIMESTAMP(3)                                 NOT NULL,
    "TrialStatus"       CHAR(1)      COLLATE dbo.case_insensitive    NOT NULL,
    "IsTrialActive"     CHAR(1)      COLLATE dbo.case_insensitive    NOT NULL,
    "SentWarnEmail"     CHAR(1)      COLLATE dbo.case_insensitive    NOT NULL,
    "SentEndEmail"      CHAR(1)      COLLATE dbo.case_insensitive    NOT NULL,
    CONSTRAINT "PK_TrialStatus" PRIMARY KEY   
    (
        "CustomerId"
    )  
);