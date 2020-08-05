CREATE TABLE IF NOT EXISTS dbo."UserSecurityQuestionAnswerPairs"
(   
    "UserSecurityQuestionAnswerPairsId"     INTEGER                                      NOT NULL GENERATED ALWAYS AS IDENTITY,
    "UserId"                                INTEGER                                      NOT NULL,
    "UserType"                              INTEGER                                      NOT NULL CONSTRAINT "CK_UserSecurityQuestionAnswerPairs_UserType"        CHECK    (UserType IN (0, 1, 2, 3)),
    "QuestionOneId"                         INTEGER                                      NOT NULL,
    "AnswerOne"                             VARCHAR(50)  COLLATE dbo.case_insensitive    NOT NULL,
    "QuestionTwoId"                         INTEGER                                      NOT NULL,
    "AnswerTwo"                             VARCHAR(50)  COLLATE dbo.case_insensitive    NOT NULL,
    "QuestionThreeId"                       INTEGER                                      NOT NULL,
    "AnswerThree"                           VARCHAR(50)  COLLATE dbo.case_insensitive    NOT NULL,
    "DateCreated"                           TIMESTAMP(3)                                 NOT NULL CONSTRAINT "DF_UserSecurityQuestionAnswerPairs_DateCreated"    DEFAULT LOCALTIMESTAMP,
    "DateAmended"                           TIMESTAMP(3)                                 NOT NULL CONSTRAINT "DF_UserSecurityQuestionAnswerPairs_DateAmended"    DEFAULT LOCALTIMESTAMP,
    
    CONSTRAINT "PK_UserSecurityQuestionAnswerPairs" PRIMARY KEY 
    (
        "UserSecurityQuestionAnswerPairsId"
        )
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_UserSecurityQuestionAnswerPairs_CN01" ON dbo."UserSecurityQuestionAnswerPairs" 
(
    "UserId", 
    "UserType"
    );