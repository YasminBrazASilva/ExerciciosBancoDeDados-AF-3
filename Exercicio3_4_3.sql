DELIMITER $
	-- Cria a procedure matricularAlunoNoCurso, para que seja adicionado uma nova matrícula à tabela matriculas
	CREATE PROCEDURE matricularAlunoNoCurso(mtr_alu_id INT, mtr_cur_id INT)
		BEGIN
			-- Checa se o aluno tem alguma matrícula ativa
			SELECT COUNT(mtr_alu_id)
              INTO @matriculas_ativas_do_aluno
              FROM matriculas AS m
		     WHERE m.mtr_alu_id = mtr_alu_id
               AND m.mtr_status = "Ativa";
			
            -- Caso o aluno não tenha nenhuma matrícula ativa
				IF @matriculas_ativas_do_aluno = 0 THEN
					-- Insere os valores definidos na tabela matriculas (o id é NULL pois este campo é autoincremental)
					INSERT INTO matriculas
						VALUES (NULL, "Ativa", mtr_alu_id, mtr_cur_id);
			-- Caso ele tenha alguma matrícula ativa
			    ELSE
					-- Lança um erro
                    SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = "Erro. O aluno já está matriculado em um curso", 
                    MYSQL_ERRNO = 2022;
				END IF;
		END $
DELIMITER ;