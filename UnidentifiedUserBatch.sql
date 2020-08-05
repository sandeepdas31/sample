CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUserBatch"
(
    "UnidentifiedUserBatchId"         INTEGER      GENERATED ALWAYS AS IDENTITY    NOT NULL,
    "UnidentifiedUserBatchStatusId"   INTEGER                                      NOT NULL,
    "CustomerId"                      INTEGER                                      NOT NULL,
    "DateCreated"                     TIMESTAMP(3)                                 NOT NULL CONSTRAINT "DF_UnidentifiedUserBatch_DateCreated" DEFAULT LOCALTIMESTAMP,
    "DateAmended"                     TIMESTAMP(3)                                 NOT NULL CONSTRAINT "DF_UnidentifiedUserBatch_DateAmended" DEFAULT LOCALTIMESTAMP,
   
    CONSTRAINT "PK_UnidentifiedUserBatch" PRIMARY KEY
    (
        "UnidentifiedUserBatchId"
    )
);