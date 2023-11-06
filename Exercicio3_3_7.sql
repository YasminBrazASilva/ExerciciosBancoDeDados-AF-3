-- Insere dados na tabela matriculas
CALL novaMatricula(1, "Ativa", 1);
CALL novaMatricula(2, "Ativa", 1);
CALL novaMatricula(3, "Ativa", 1);
CALL novaMatricula(4, "Ativa", 1);
CALL novaMatricula(5, "Ativa", 2);
CALL novaMatricula(6, "Ativa", 2);
CALL novaMatricula(7, "Ativa", 3);
CALL novaMatricula(8, "Trancada", 4);
CALL novaMatricula(9, "Trancada", 5);
CALL novaMatricula(10, "Inativa", 6);
CALL novaMatricula(11, "Inativa", 7);
CALL novaMatricula(12, "Ativa", 9);
CALL novaMatricula(13, "Ativa", 9);
CALL novaMatricula(14, "Ativa", 10);
CALL novaMatricula(15, "Ativa", 10);
CALL novaMatricula(16, "Ativa", 10);

-- Exibe os dados da tabela matriculas
CALL selecionarTudo("matriculas");