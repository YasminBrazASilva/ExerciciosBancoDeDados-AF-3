DELIMITER $
	-- Cria a procedure selecionarTudo, que exibe todos os dados de uma tabela escolhida
	CREATE PROCEDURE selecionarTudo(tabela VARCHAR(100))
		BEGIN
			-- Cria a string da query que será executada, a partir da string passada como parâmetro na chamada da função
			SET @query = CONCAT('SELECT * FROM ', tabela);
			PREPARE stmt FROM @query;
            
            -- Executa a query
			EXECUTE stmt;
			DEALLOCATE PREPARE stmt;
		END $
DELIMITER ;