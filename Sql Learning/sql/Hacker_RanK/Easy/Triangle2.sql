DELIMITER gg

CREATE PROCEDURE print_pattern(IN R INT)
BEGIN
    DECLARE a INT DEFAULT 1;
    WHILE a <= R DO
        SELECT REPEAT('* ', a);
        SET a = a + 1;
    END WHILE;
END gg

DELIMITER ;

CALL print_pattern(20);
