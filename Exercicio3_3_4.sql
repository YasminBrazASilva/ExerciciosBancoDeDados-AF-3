DELIMITER $
	-- Cria a procedure novoAluno, para que seja adicionado um novo aluno à tabela alunos
	CREATE PROCEDURE novoAluno(alu_nome VARCHAR(400))
		BEGIN
			-- Define os campos primeiroNome e ultimoSobrenome a partir do campo alu_nome passado como parâmetro da função
			SET @primeiroNome = LOWER(SUBSTRING_INDEX(alu_nome, ' ', 1));
            SET @ultimoSobrenome = LOWER(REVERSE(SUBSTRING_INDEX(REVERSE(alu_nome), ' ', 1)));
             
			-- Procura alunos na tabela alunos que possuam o mesmo primeiroNome e ultimoSobrenome do novo aluno
            SELECT COUNT(*) 
              INTO @emailCount 
              FROM alunos
			 WHERE @primeiroNome = alu_primeiro_nome 
               AND @ultimoSobrenome = alu_ultimo_sobrenome;
			
			/* Cria o email do novo aluno baseado em seu primeiroNome e ultimoSobrenome, 
            caso haja outros emails que têm como base esse mesmo primeiroNome e ultimoSobrenome, 
            a quantidade de ocorrências é adicionada ao email do novoAluno, para que haja uma diferenciação*/
            SET @alu_email = 
				CASE
					WHEN @emailCount > 0 
                    THEN CONCAT(@primeiroNome, '.', @ultimoSobrenome, @emailCount, '@facens.com')
					ELSE CONCAT(@primeiroNome, '.', @ultimoSobrenome, '@facens.com')
				END;
                
			-- Insere os valores definidos na tabela alunos, (o id é NULL pois este campo é autoincremental)
			INSERT INTO alunos
			  	 VALUES (NULL, alu_nome, @primeiroNome , @ultimoSobrenome, @alu_email);
		END $
DELIMITER ;