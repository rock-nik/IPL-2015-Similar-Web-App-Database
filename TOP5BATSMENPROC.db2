CREATE OR REPLACE PROCEDURE TOP5BATSMENPROC ()
DYNAMIC RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE CURSOR1 CURSOR WITH RETURN FOR 
	SELECT NAME,TEAM_NAME,RUNS FROM IPL.PLAYER ORDER BY RUNS DESC LIMIT 5;
	OPEN CURSOR1;
END@