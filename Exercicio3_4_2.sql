DELIMITER $
	-- Cria a função buscarIdCursoPeloNomeEArea que retorna o id do curso buscado de acordo com seu nome e área
	CREATE FUNCTION buscarIdCursoPeloNomeEArea(
		cur_nome VARCHAR(45), 
        cur_area VARCHAR(45)
        )
        
		RETURNS INT DETERMINISTIC
        BEGIN
			-- Busca o id do curso com o nome e área selecionados e o insere dentro de "@cur_id"
			SELECT c.cur_id 
              INTO @cur_id
			  FROM cursos AS c
			 WHERE LOWER(c.cur_nome) = LOWER(cur_nome)
               AND LOWER(c.cur_area) = LOWER(cur_area);
             
            -- Exibe na tela o id encontrado 
			RETURN @cur_id;
        END$
			
DELIMITER ;