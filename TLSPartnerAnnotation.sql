CREATE TABLE IF NOT EXISTS dbo."TLSPartnerAnnotation"
(
     "TLSPartnerDomainId"         INTEGER                                      NOT NULL,
     "Comment"                    VARCHAR(250) COLLATE dbo.case_insensitive    NOT NULL,
     "DateCreated"                TIMESTAMP(3)                                 NOT NULL  CONSTRAINT "DF_TLSPartnerAnnotation_DateCreated"            DEFAULT LOCALTIMESTAMP,
     "DateAmended"                TIMESTAMP(3)                                 NOT NULL  CONSTRAINT "DF_TLSPartnerAnnotation_DateAmended"            DEFAULT LOCALTIMESTAMP,     
     "WhoAmended_nt_username"     VARCHAR(255) COLLATE dbo.case_insensitive    NULL      CONSTRAINT "DF_TLSPartnerAnnotation_WhoAmended_nt_username" DEFAULT CURRENT_USER,
     "WhoAmended_hostname"        VARCHAR(255) COLLATE dbo.case_insensitive    NULL      CONSTRAINT "DF_TLSPartnerAnnotation_WhoAmended_hostname"    DEFAULT dbo."Host_Name"(),
     
     CONSTRAINT "PK_TLSPartnerAnnotation" PRIMARY KEY 
     (
          "TLSPartnerDomainId"
          )
);
