# ExerciciosBancoDeDados-AF-3
Exercícios para AF da matéria de Banco de Dados do 2º semestre de ADS

Crie um banco de dados para armazenar alunos e cursos de uma universidade. Cada curso pode pertencer a somente uma área. O aluno possui um e-mail que deve ter seu endereço gerado automaticamente no seguinte formato: nome.sobrenome@dominio.com

--- 
### ETAPA 1: MODELAGEM

* Modelo conceitual: <br>
   ![ExercicioModeloConceitual3_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioModeloConceitual3_1.png)<br>
* Modelo lógico: <br>
   ![ExercicioModeloLogico3_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioModeloLogico3_1.png)<br>

---

### ETAPA 2: CRIAÇÃO DAS TABELAS
A criação das tabelas pode ser vista em: [Exercicio3_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_2.sql) <br> 
  ![ExercicioTela3_2_1.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioTela3_2_1.png)
  ![ExercicioTela3_2_2.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioTela3_2_2.png)
  ![ExercicioTela3_2_3.png](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioTela3_2_3.png)

---
### ETAPA 3: ADICIONAR DADOS À TABELA
Utilize Stored Procedures para automatizar a inserção e seleção dos cursos
  * A criação da stored procedure **selecionarTudo** pode ser vista em: [Exercicio3_3_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_1.sql) <br>
  * A criação da stored procedure **novoCurso** pode ser vista em: [Exercicio3_3_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_2.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_3.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_3_3.csv). <br>
  * A criação da stored procedure **novoAluno** pode ser vista em: [Exercicio3_3_4.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_4.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_5.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_3_5.csv). <br>
  * A criação da stored procedure **novaMatricula** pode ser vista em: [Exercicio3_3_6.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_6.sql) <br>
    * Sua execução pode ser vista [neste arquivo](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_3_7.sql), o qual gerou [este relatório](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_3_7.csv). <br>

---

### ETAPA 4: CRIAÇÃO DAS PROCEDURES
* Crie uma rotina que recebe os dados de um novo curso e o insere no banco de dados.
    * Implementação da procedure: [Exercicio3_4_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_1.sql)
    * Execução da procedure: [Exercicio3_4_1_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_1_1.sql)
    * Resultado: [ExercicioRelatorio3_4_1_1.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_4_1_1.csv)
* Crie uma função que recebe o nome de um curso e sua área, em seguida retorna o id do curso.
    * Implementação da procedure: [Exercicio3_4_2.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_2.sql)
    * Execução da procedure: [Exercicio3_4_2_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_2_1.sql)
    * Resultado: [ExercicioRelatorio3_4_2_1.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_4_2_1.csv)   
* Crie uma procedure que recebe os dados do aluno e de um curso e faz sua matrícula. Caso o aluno já esteja matriculado em um curso, essa matrícula não pode ser realizada.
    * Implementação da procedure: [Exercicio3_4_3.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_3.sql)
    * Execução da procedure: [Exercicio3_4_3_1.sql](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/Exercicio3_4_3_1.sql)
    * Resultado: [ExercicioRelatorio3_4_3_1.csv](https://github.com/YasminBrazASilva/ExerciciosBancoDeDados-AF-3/blob/main/ExercicioRelatorio3_4_3_1.csv) 

