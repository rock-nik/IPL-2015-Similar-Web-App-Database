CREATE OR REPLACE PROCEDURE RECORDPROC (IN PID INTEGER,IN AGAINST INTEGER,IN MATCHNO INTEGER,IN DESCRIPTION VARCHAR(100))
BEGIN

INSERT INTO IPL.RECORD (P_ID,AGAINST,MATCHNO,DESCRIPTION) VALUES (PID,AGAINST,MATCHNO,DESCRIPTION);
END@