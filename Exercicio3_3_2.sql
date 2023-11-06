DELIMITER $
	-- Cria a procedure novoCurso, para que seja adicionado um novo curso à tabela cursos
	CREATE PROCEDURE novoCurso(
		cur_nome VARCHAR(100),
        cur_area VARCHAR(300)
    )
		BEGIN
			-- Insere os valores na tabela cursos (o id é NULL pois este campo é autoincremental)
			INSERT INTO cursos
				VALUES (NULL, cur_nome, cur_area);
		END $
DELIMITER ;