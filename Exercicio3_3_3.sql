-- Insere dados na tabela cursos
CALL novoCurso('Administração de Empresas', 'Administração');
CALL novoCurso('Biologia', 'Ciências Biológicas');
CALL novoCurso('Biologia Marinha', 'Ciências Biológicas');
CALL novoCurso('Economia', 'Ciências Econômicas');
CALL novoCurso('Direito', 'Ciências Jurídicas');
CALL novoCurso('Psicologia', 'Ciências Sociais');
CALL novoCurso('Serviço Social', 'Ciências Sociais');
CALL novoCurso('Engenharia Mecânica', 'Engenharia');
CALL novoCurso('Engenharia Química', 'Engenharia');
CALL novoCurso('Engenharia de Software', 'Tecnologia da Informação');

-- Exibe todas as linhas e colunas da tabela cursos
CALL selecionarTudo("cursos")