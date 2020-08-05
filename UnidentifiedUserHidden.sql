CREATE TABLE IF NOT EXISTS dbo."UnidentifiedUserHidden"
(
    "UnidentifiedUserHiddenId"              INTEGER GENERATED ALWAYS AS IDENTITY    NOT NULL,
    "CustomerId"                            INTEGER                                 NOT NULL,
    "UnidentifiedUserAccountTypeId"         INTEGER                                 NOT NULL,
    "Name"                                  VARCHAR(255)                                NULL,
    "Account"                               VARCHAR(255)                                NULL,
    "DateCreated"                           TIMESTAMP(3)                            NOT NULL,
    CONSTRAINT "PK_UnidentifiedUserHidden" PRIMARY KEY  
    (
        "UnidentifiedUserHiddenId"
    )
);

CREATE INDEX IF NOT EXISTS IX_UnidentifiedUserHidden_CL01 on dbo."UnidentifiedUserHidden"
(
    "CustomerId"
    );