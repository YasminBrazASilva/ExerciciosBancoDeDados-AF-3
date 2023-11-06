DELIMITER $
	-- Cria a procedure inserirCurso, para que seja adicionado um novo curso à tabela cursos
	CREATE PROCEDURE inserirCurso(
		cur_nome VARCHAR(100),
        cur_area VARCHAR(300)
    )
		BEGIN
			-- Insere os valores na tabela cursos (o id é NULL pois este campo é autoincremental)
			INSERT INTO cursos
				VALUES (NULL, cur_nome, cur_area);
		END $
DELIMITER ;