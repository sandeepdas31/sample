CREATE TABLE IF NOT EXISTS dbo."UserGroupMembership"
(   
    "GroupId"                   INTEGER                                     NOT NULL,
    "MemberId"                  INTEGER                                     NOT NULL,
    "MemberType"                CHAR(1)       COLLATE dbo.case_insensitive  NOT NULL,
    "DateCreated"               TIMESTAMP(3)                                NOT NULL,
    "DateDeleted"               TIMESTAMP(3)                                NOT NULL,
    "WhoAmended_nt_username"    VARCHAR(255)  COLLATE dbo.case_insensitive  NOT NULL,
    "WhoAmended_hostname"       VARCHAR(255)  COLLATE dbo.case_insensitive  NOT NULL,
    "LockingTimestamp"          TIMESTAMP(3)                                     NULL,
    CONSTRAINT "PK_UserGroupMembership" PRIMARY KEY   
    (
        "GroupId",
        "MemberId",
        "MemberType",
        "DateDeleted"
    )  
);

CREATE  INDEX IF NOT EXISTS "IX_UserGroupMembership_NC01" ON dbo."UserGroupMembership"
(
    "MemberId", 
    "MemberType", 
    "DateDeleted"
    );