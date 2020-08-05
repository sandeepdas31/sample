CREATE TABLE IF NOT EXISTS dbo."UserSecurityQuestionAnswerAttempts"
(
    "UserSecurityQuestionAnswerPairsId"   INTEGER         NOT NULL,
    "NumberOfAttempts"                    SMALLINT        NOT NULL,
    "LastAttemptDate"                     TIMESTAMP(3)    NOT NULL,
    CONSTRAINT "PK_UserSecurityQuestionAnswerAttempts" PRIMARY KEY 
    (
        "UserSecurityQuestionAnswerPairsId"
        )
);