CREATE OR REPLACE PROCEDURE TOP3LIKEDPLAYERSPROC ()
DYNAMIC RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE CURSOR1 CURSOR WITH RETURN FOR 
	SELECT NAME,TEAM_NAME,LIKES FROM IPL.PLAYER ORDER BY LIKES DESC LIMIT 3;
	OPEN CURSOR1;
END@