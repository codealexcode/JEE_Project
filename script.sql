DROP TABLE MEMBER;
DROP TABLE LOGIN;

CREATE TABLE "MEMBER" (
    "ID" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    "NAME" VARCHAR(25) NOT NULL,
    "FIRSTNAME" VARCHAR(25) NOT NULL,
    "TELHOME" VARCHAR(10) NOT NULL,
    "TELMOB" VARCHAR(10) NOT NULL,
    "TELPRO" VARCHAR(10) NOT NULL,
    "ADRESS" VARCHAR(150) NOT NULL,
    "POSTALCODE" VARCHAR(5) NOT NULL,
    "CITY" VARCHAR(25) NOT NULL,
    "EMAIL" VARCHAR(25) NOT NULL,
    CONSTRAINT primary_key_member PRIMARY KEY (ID)
);

CREATE TABLE "LOGIN" (
    "ID" INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    "USERNAME" VARCHAR(25) NOT NULL,
    "PASSWORD" VARCHAR(25) NOT NULL
);


INSERT INTO LOGIN(USERNAME, PASSWORD) VALUES('admin', 'efreijee');