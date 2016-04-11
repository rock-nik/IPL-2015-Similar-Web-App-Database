CREATE OR REPLACE PROCEDURE TOP3MOSTCENTURIESPROC ()
DYNAMIC RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE MOSTCENTURIES CURSOR WITH RETURN FOR 
	SELECT NAME,TEAM_NAME,HUNDRED FROM IPL.PLAYER ORDER BY HUNDRED DESC LIMIT 3;
	OPEN MOSTCENTURIES;
END@