CREATE OR REPLACE PROCEDURE TOP5BOWLERSPROC () 
    DYNAMIC RESULT SETS 1 
    LANGUAGE SQL 
    BEGIN 
        DECLARE result_set_1 CURSOR WITH RETURN  FOR
            SELECT NAME,TEAM_NAME,WTAKEN FROM IPL.PLAYER ORDER BY WTAKEN DESC LIMIT 5;    
        OPEN result_set_1;
    END@