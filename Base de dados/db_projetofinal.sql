CREATE TABLE QUESTION(
ID VARCHAR(10),
DESCRIPTION VARCHAR(255) NOT NULL,
DIFFICULTY VARCHAR(50) NOT NULL,
TYPE VARCHAR(50) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE TOPIC(
TOPIC VARCHAR(50) UNIQUE,
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE QUESTION_SUBJECT(
QUESTION_SUBJECT VARCHAR(50) UNIQUE,
QUESTIONID VARCHAR(10),
FOREIGN KEY(QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE DEVELOPMENT(
ANSWER_PLACEHOLDER VARCHAR(50),
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE SHORTANSWER(
ANSWER VARCHAR(200),
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE MULTIPLECHOICE(
ANSWER VARCHAR(50),
VAL BOOL,
TRUEORFALSE BOOL,
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE CALCULATEDQ(
ANSWER FLOAT(8,4),
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);

CREATE TABLE MATCHFOLLOWING(
LEFTSIDE VARCHAR(50),
RIGHTSIDE VARCHAR(50),
QUESTIONID VARCHAR(10),
FOREIGN KEY (QUESTIONID) REFERENCES QUESTION(ID)
);