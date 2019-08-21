- despejo do SQL do phpMyAdmin
- versão 4.6.6deb5
- https://www.phpmyadmin.net/
-
- Anfitrião: localhost: 3306
- Tempo de geração: 20/08/2019 às 16:48
- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
- Versão do PHP: 7.2.13-1 + ubuntu18.04.1 + deb.sury.org + 1

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
SET time_zone =  " +00: 00 " ;


/ * ! 40101 SET @OLD_CHARACTER_SET_CLIENT = @@ CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET @OLD_CHARACTER_SET_RESULTS = @@ CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET @OLD_COLLATION_CONNECTION = @@ COLLATION_CONNECTION * / ;
/ * ! 40101 SET NAMES utf8mb4 * / ;

-
- Banco de dados: `atv_prt_042_bd`
-

- ------------------------------------------------ --------

-
- Estrutura para tabela `teste1`
-

CRIAR  TABELA  ` teste1 ` (
  ` Testid `  int ( 4 ) não  nulo ,
  ` Nomo `  VARCHAR ( 25 ) não  nulo ,
  ` Idade `  int ( 4 ) NÃO  NULL
) MOTOR = InnoDB CHAVE PADRÃO = utf8;

-
- Fazendo despejo de dados para tabela `teste1`
-

INSERÇÃO  EM  ` teste1 ` ( ` testid ` , ` nomo ` , ` Idade ` ) VALORES
( 1 , ' Joaquim' , 42 ),
( 2 , ' Elaine' , 45 ),
( 3 , ' Matheus' , 21 ),
( 4 , ' Artur' , 19 ),
( 5 , ' Vitor' , 22 );

-
- Índices de mesa apagadas
-

-
- Índices de tabela `teste1`
-
ALTER  TABLE  ` teste1 `
  ADD PRIMÁRIA  CHAVE ( ` testid ` );

-
- AUTO_INCREMENT de tabela ignoradas
-

-
- AUTO_INCREMENT de tabela `teste1`
-
ALTER  TABLE  ` teste1 `
  MODIFICAR  ` testid `  int ( 4 ) NÃO  NULL AUTO_INCREMENT, AUTO_INCREMENT = 6 ;
/ * ! 40101 SET CHARACTER_SET_CLIENT = @ OLD_CHARACTER_SET_CLIENT * / ;
/ * ! 40101 SET CHARACTER_SET_RESULTS = @ OLD_CHARACTER_SET_RESULTS * / ;
/ * ! 40101 SET COLLATION_CONNECTION = @ OLD_COLLATION_CONNECTION * / ;
