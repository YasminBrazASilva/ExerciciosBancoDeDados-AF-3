DELIMITER $
	-- Cria a procedure novaMatricula, para que seja registrado na tabela matriculas uma nova relação de aluno-curso
	CREATE PROCEDURE novaMatricula(mtr_alu_id INT, mtr_status VARCHAR(10), mtr_cur_id INT)
		BEGIN
			-- Insere os valores definidos na tabela matriculas (o id é NULL pois este campo é autoincremental)
			INSERT INTO matriculas
				VALUES (NULL, mtr_status, mtr_alu_id, mtr_cur_id);
		END $
DELIMITER ;