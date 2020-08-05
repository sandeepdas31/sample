CREATE TABLE dbo."UserGroupMembershipDeleted"
(   
    "GroupId"                 INTEGER                                      NOT NULL,
    "MemberId"                INTEGER                                      NOT NULL,
    "MemberType"              CHAR(1)       COLLATE dbo.case_insensitive   NOT NULL,
    "DateCreated"             TIMESTAMP(3)                                 NOT NULL,
    "WhoAmended_nt_username"  VARCHAR(255)  COLLATE dbo.case_insensitive   NOT NULL,
    "WhoAmended_hostname"     VARCHAR(255)  COLLATE dbo.case_insensitive   NOT NULL,
    "DeleteSequenceNo"        INTEGER                                      NOT NULL GENERATED ALWAYS AS IDENTITY,
    "LoginName"               VARCHAR(255)  COLLATE dbo.case_insensitive   NOT NULL CONSTRAINT "DF_UserGroupMembershipDeleted_LoginName"     DEFAULT CURRENT_USER,
    "HostName"                VARCHAR(255)  COLLATE dbo.case_insensitive   NOT NULL CONSTRAINT "DF_UserGroupMembershipDeleted_HostName"      DEFAULT CURRENT_USER,
    "ActionTime"              TIMESTAMP(3)                                 NOT NULL CONSTRAINT "DF_UserGroupMembershipDeleted_ActionTime"    DEFAULT LOCALTIMESTAMP,
    
    CONSTRAINT "PK_UserGroupMembershipDeleted" PRIMARY KEY  
    (
        "GroupId",
        "MemberId",
        "MemberType",
        "ActionTime"
    )
);