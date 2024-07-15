-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-05-2019 a las 16:00:10
-- Versión del servidor: 5.5.60-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acceso_externos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `dni` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `datos` text,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `dni`, `nombre`, `apellido`, `datos`, `user`) VALUES
(1, '22610306', 'SERGIO ANTONIO', 'ROSER', NULL, ''),
(2, '34682067', 'MARIA DEL PILAR', 'MARTINEZ ORLOFF', '00128565252\"MARTINEZ ORLOFF\"MARIA DEL PILAR\"F\"34682067\"A\"14-07-1989\"09-08-2012', ''),
(3, '11403602', 'LILIANA MARIA', 'SADA', '00259529617\"SADA\"LILIANA MARIA\"F\"11403602\"A\"03-06-1955\"16-04-2014', ''),
(4, '25570407', 'LEOPOLDO GASTN', 'ZOROZA', '00315302229\"ZOROZA\"LEOPOLDO GASTN\"M\"25570407\"A\"08-11-1976\"06-11-2014\"239', ''),
(5, '22825670', 'ADRIAN PATRICIO', 'GRASSI', '\"22825670    \"A\"1\"GRASSI\"ADRIAN PATRICIO\"ARGENTINA\"19-08-1972\"M\"26-07-2011\"00062043169\"9001 \"26-07-2026\"10\"0\"ILRÃ‘2.01 CÃ‘110613.02 )No Cap.=\"UNIDAD #03 ]] S-NÃ‘ 0040:2008::0017', ''),
(6, '32070745', 'SEBASTIAN', 'CANEPARE', '00270193396\"CANEPARE\"SEBASTIAN\"M\"32070745\"B\"28-02-1986\"02-06-2014', ''),
(7, '25172750', 'JORGELINA ADELA', 'JUAREZ', '00223795086\"JUAREZ\"JORGELINA ADELA\"F\"25172750\"A\"02-11-1975\"10-10-2013', ''),
(8, '26530252', 'CLAUDIA VERONICA', 'DIAZ', '00208415589\"DIAZ\"CLAUDIA VERONICA\"F\"26530252\"B\"30-03-1978\"30-07-2013', ''),
(9, '22411686', 'MARCELO JORGE', 'HERRERA', '00115681339\"HERRERA\"MARCELO JORGE\"M\"22411686\"A\"22-03-1972\"05-06-2012', ''),
(10, '26338519', 'CYNTHIA LORENA', 'CIMADEVILA', '00143736471\"CIMADEVILA\"CYNTHIA LORENA\"F\"26338519\"A\"11-01-1978\"22-10-2012', ''),
(11, '21600488', 'KARINA GRACIELA', 'TORRES', '00254549593\"TORRES\"KARINA GRACIELA\"F\"21600488\"B\"25-05-1970\"21-03-2014', ''),
(12, '13641836', 'MARISA NELIDA', 'GONZALEZ', '00158778617\"GONZALEZ\"MARISA NELIDA\"F\"13641836\"A\"09-07-1960\"04-01-2013', ''),
(13, '26098278', 'ALFREDO JULIAN', 'ALVAREZ', '00153978584\"ALVAREZ\"ALFREDO JULIAN\"M\"26098278\"C\"03-02-1978\"12-12-2012', 'mariela.ronsino'),
(14, '21797802', 'PAULO ADRIAN', 'BIGLIARDI', '00398837401\"BIGLIARDI\"PAULO ADRIAN\"M\"21797802\"C\"30-10-1970\"14-09-2015\"206', 'mariela.ronsino'),
(15, '35147454', 'MELISA YANELA', 'BORDON', '00554842012\"BORDON\"MELISA YANELA\"F\"35147454\"B\"10-07-1990\"10-07-2018\"273', 'mariela.ronsino'),
(16, '37338938', 'JUAN IGNACIO', 'CETRARO', '00275769701\"CETRARO\"JUAN IGNACIO\"M\"37338938\"B\"18-02-1993\"23-06-2014', 'mariela.ronsino'),
(17, '24249161', 'SOLANGE MARISOL', 'MOYA', '00408822313\"MOYA\"SOLANGE MARISOL\"F\"24249161\"A\"12-10-1974\"14-11-2015\"276', 'mariela.ronsino'),
(18, '13869855', 'MARGARITA JOSEFA', 'GIMENEZ IMOFF', '00443640397\"GIMENEZ IMOFF\"MARGARITA JOSEFA\"F\"13869855\"B\"01-09-1960\"01-07-2016\"271', 'mariela.ronsino'),
(19, '27948491', 'JIMENA', 'BALDELLO', '00248045487\"BALDELLO\"JIMENA\"F\"27948491\"A\"23-02-1980\"14-03-2014', 'mariela.ronsino'),
(20, '14178417', 'NESTOR ROBERTO', 'CENTENO', '00151065814\"CENTENO\"NESTOR ROBERTO\"M\"14178417\"A\"17-08-1960\"27-11-2012', 'mariela.ronsino'),
(21, '25770652', 'MARIA LAURA', 'VILA', '00318504855\"VILA\"MARIA LAURA\"F\"25770652\"A\"24-02-1977\"12-11-2014\"234', 'mariela.ronsino'),
(22, '29370609', 'ERICA LILIANA', 'TORRES', '00386844917\"TORRES\"ERICA LILIANA\"F\"29370609\"A\"29-05-1982\"17-07-2015\"279', 'mariela.ronsino'),
(23, '13685621', 'PATRICIA EDITH', 'CABAL', NULL, 'mariela.ronsino'),
(24, '17732474', 'CLAUDIA MARCELA', 'COTELO', NULL, 'mariela.ronsino'),
(25, '25726406', 'MARIEL ANDREA', 'BENEDETTO', '00198349176\"BENEDETTO\"MARIEL ANDREA\"F\"25726406\"B\"08-04-1977\"13-06-2013', 'mariela.ronsino'),
(26, '26693764', 'MATAS', 'DELLA BERNARDINA', '00312468377\"DELLA BERNARDINA\"MATAS\"M\"26693764\"A\"30-06-1978\"10-11-2014\"205', 'mariela.ronsino'),
(27, '16473088', 'WALTER GUSTAVO', 'BLANCO', '\"16473088    \"A\"1\"BLANCO\"WALTER GUSTAVO\"ARGENTINA\"23-04-1963\"M\"01-04-2011\"00044032407\"7041 \"01-04-2026\"444\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #07 ]] S-NÃ‘ 0040:2008::0002', 'mariela.ronsino'),
(28, '17147215', 'GUSTAVO NESTOR ROBERTO', 'ALARCON', '00566205329\"ALARCON\"GUSTAVO NESTOR ROBERTO\"M\"17147215\"B\"20-02-1965\"29-09-2018\"207', 'mariela.ronsino'),
(29, '13906509', 'ESTHER LILIANA', 'CAINZO', '00139373700\"CAINZO\"ESTHER LILIANA\"F\"13906509\"B\"27-05-1960\"29-09-2012', 'mariela.ronsino'),
(30, '35163349', 'FLAVIA CAROLINA', 'SPITALERI', '00561919866\"SPITALERI\"FLAVIA CAROLINA\"F\"35163349\"C\"25-03-1990\"29-08-2018\"278', 'mariela.ronsino'),
(31, '23500755', 'CECILIA GRISELDA', 'MOYANO', '\"23500755    \"A\"1\"MOYANO\"CECILIA GRISELDA\"ARGENTINA\"17-11-1973\"F\"10-08-2011\"00064952495\"7020 \"10-08-2026\"165\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #C2 ]] S-NÃ‘ 0040:2009::0018', 'mariela.ronsino'),
(32, '24936057', 'GABRIELA LIDIA', 'PERALTA', '00248815550\"PERALTA\"GABRIELA LIDIA\"F\"24936057\"B\"03-10-1975\"25-02-2014', 'mariela.ronsino'),
(33, '24936057', 'PERALTA', 'GABRIELA LIDIA', NULL, 'mariela.ronsino'),
(34, '17654590', 'ISABEL MARIANA', 'CESAR', '00121145147\"CESAR\"ISABEL MARIANA\"F\"17654590\"A\"02-05-1964\"03-07-2012', 'mariela.ronsino'),
(35, '27386375', 'LUIS CLAUDIO', 'BULACIO', '00263839237\"BULACIO\"LUIS CLAUDIO\"M\"27386375\"B\"02-06-1979\"19-06-2014', 'mariela.ronsino'),
(36, '32472342', 'MARIA LETICIA', 'GONZALEZ', '00470472804\"GONZALEZ\"MARIA LETICIA\"F\"32472342\"B\"07-08-1986\"22-12-2016\"276', 'mariela.ronsino'),
(37, '18396674', 'MARCELA BEATRIZ', 'PITTOLO', '00373702732\"PITTOLO\"MARCELA BEATRIZ\"F\"18396674\"C\"30-12-1966\"02-06-2015\"275', 'mariela.ronsino'),
(38, '23523114', 'ESTELA CAROLINA', 'GOMEZ', '00142518023\"GOMEZ\"ESTELA CAROLINA\"F\"23523114\"B\"28-08-1973\"15-10-2012', 'mariela.ronsino'),
(39, '26323104', 'MARIELA SILVIA', 'PASSARO', '00258508191\"PASSARO\"MARIELA SILVIA\"F\"26323104\"B\"07-10-1977\"11-04-2014', 'mariela.ronsino'),
(40, '23091729', 'SILVIA MARIA GABRIELA', 'CEJAS', '00370642787\"CEJAS\"SILVIA MARIA GABRIELA\"F\"23091729\"B\"03-06-1973\"21-05-2015\"274', 'mariela.ronsino'),
(41, '22749461', 'DIEGO LUIS', 'TOSSO', '00469567907\"TOSSO\"DIEGO LUIS\"M\"22749461\"B\"06-12-1972\"16-12-2016\"202', 'mariela.ronsino');
INSERT INTO `persona` (`id_persona`, `dni`, `nombre`, `apellido`, `datos`, `user`) VALUES
(42, '24800961', 'PAOLA ADRIANA', 'MAGIS', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            \"24800961    \"A\"1\"MAGIS\"PAOLA ADRIANA\"ARGENTINA\"22-09-1975\"F\"16-03-2011\"00042075592\"8263 \"16-03-2026\"403\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #09 ]] S-NÃ‘ 0040:2008::0009', 'mariela.ronsino');
INSERT INTO `persona` (`id_persona`, `dni`, `nombre`, `apellido`, `datos`, `user`) VALUES
(43, '23605960', 'MARIA GLADYS', 'ORTUNO', '00272355906\"ORTUNO\"MARIA GLADYS\"F\"23605960\"A\"07-11-1973\"12-06-2014', 'mariela.ronsino'),
(44, '29275132', 'LAURA SOLEDAD', 'GIOVAGNETTI', '00106994395\"GIOVAGNETTI\"LAURA SOLEDAD\"F\"29275132\"B\"06-01-1982\"18-04-2012', 'mariela.ronsino'),
(45, '17253643', 'MARCELO CESAR', 'GARCIA PACHECO', '00498251653\"GARCIA PACHECO\"MARCELO CESAR\"M\"17253643\"B\"27-02-1965\"06-06-2017\"204', 'mariela.ronsino'),
(46, '31829015', 'MARIO NICOLAS', 'MAGALLAN', '00332064653\"MAGALLAN\"MARIO NICOLAS\"M\"31829015\"D\"31-08-1985\"02-01-2015\"207', 'mariela.ronsino'),
(47, '18863670', 'JENNIFER PAULINA', 'DUARTE CALDERON', '00099942560\"DUARTE CALDERON\"JENNIFER PAULINA\"F\"18863670\"A\"25-10-1984\"26-03-2012', 'mariela.ronsino'),
(48, '18623875', 'VIVIANA EDITH', 'CACERES', '00359309619\"CACERES\"VIVIANA EDITH\"F\"18623875\"C\"04-11-1966\"14-04-2015\"279', 'mariela.ronsino'),
(49, '23285734', 'MARISA VIVIANA', 'SALTO', '00375073619\"SALTO\"MARISA VIVIANA\"F\"23285734\"B\"18-05-1973\"04-06-2015\"275', 'mariela.ronsino'),
(50, '23538642', 'MARIA CECILIA', 'ARTURI', '00558457736\"ARTURI\"MARIA CECILIA\"F\"23538642\"B\"12-12-1975\"16-08-2018\"274', 'mariela.ronsino'),
(51, '18905963', 'ALEJANDRO AGUSTIN', 'ASTIZ LOPEZ', '00129668466\"ASTIZ LOPEZ\"ALEJANDRO AGUSTIN\"M\"18905963\"A\"28-11-1974\"24-08-2012', 'mariela.ronsino'),
(52, '18104655', 'JORGE RAUL', 'RUESGA', NULL, 'mariela.ronsino'),
(53, '29403628', 'FEDERICO', 'STIZ', NULL, 'mariela.ronsino'),
(54, '22098793', 'VERONICA MARCELA', 'ROJAS', '00501754719\"ROJAS\"VERONICA MARCELA\"F\"22098793\"B\"06-03-1971\"10-07-2017\"276', 'mariela.ronsino'),
(55, '20036850', 'ROSANA MARIA', 'RAIMONDO', '\"20036850    \"A\"1\"RAIMONDO\"ROSANA MARIA\"ARGENTINA\"03-03-1968\"F\"16-05-2011\"00050140901\"8264 \"16-05-2026\"83\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #07 ]] S-NÃ‘ 0040:2008::0002', 'mariela.ronsino'),
(56, '20821282', 'JAVIER ARTURO', 'MARTINEZ', '0090258146\"MARTINEZ\"JAVIER ARTURO\"M\"20821282\"A\"05-11-1969\"23-01-2012', 'mariela.ronsino'),
(57, '22950701', 'HERNAN OSCAR', 'FINOCCHIARO', '00282535047\"FINOCCHIARO\"HERNAN OSCAR\"M\"22950701\"B\"06-10-1972\"23-07-2014', 'mariela.ronsino'),
(58, '12840653', 'RAUL CEFERINO', 'RUBIL', '00558800442\"RUBIL\"RAUL CEFERINO\"M\"12840653\"B\"11-01-1957\"07-08-2018\"201', 'mariela.ronsino'),
(59, '35236611', 'CARLA DAIANA', 'MONTENEGRO', '00474689415\"MONTENEGRO\"CARLA DAIANA\"F\"35236611\"B\"15-02-1990\"18-01-2017\"276', 'mariela.ronsino'),
(60, '36288476', 'LUCILA BELEN', 'PARADEDA', '00577242621\"PARADEDA\"LUCILA BELEN\"F\"36288476\"C\"22-05-1992\"06-01-2019\"234', 'mariela.ronsino'),
(61, '33899941', 'SOLANGE', 'COSTOYA', '00327951488\"COSTOYA\"SOLANGE\"F\"33899941\"B\"08-08-1988\"07-01-2015\"276', 'mariela.ronsino'),
(62, '30876801', 'EMANUEL', 'NADER', NULL, 'mariela.ronsino'),
(63, '92912153', 'XIN WEI', 'GOU', '00251008328\"GOU\"XIN WEI\"M\"92912153\"A\"03-07-1984\"05-03-2014', 'mariela.ronsino'),
(64, '21862747', 'NANCY BEATRIZ', 'GUTIERREZ', '00350222898\"GUTIERREZ\"NANCY BEATRIZ\"F\"21862747\"B\"19-11-1970\"05-05-2015\"277', 'mariela.ronsino'),
(65, '30211594', 'MATIAS ALEJANDRO', 'MELIAN', '00403158382\"MELIAN\"MATIAS ALEJANDRO\"M\"30211594\"B\"06-08-1983\"08-10-2015\"200', 'mariela.ronsino'),
(66, '31375106', 'EDGARDO ARIEL', 'GERDAU', '00400962517\"GERDAU\"EDGARDO ARIEL\"M\"31375106\"C\"18-09-1984\"25-09-2015\"207', 'mariela.ronsino'),
(67, '17303262', 'hebe araceli', 'giulianetti', NULL, 'melisa.zurawsky'),
(68, '17038203', 'ESTELA LEONOR', 'KINDSVATER', '00455033947\"KINDSVATER\"ESTELA LEONOR\"F\"17038203\"B\"09-08-1964\"06-09-2016\"275', 'melisa.zurawsky'),
(69, '16388392', 'ALEJANDRA HAYDEE', 'TRAVERSO', '00165280350\"TRAVERSO\"ALEJANDRA HAYDEE\"F\"16388392\"B\"02-06-1963\"15-02-2013', 'paula.dipaolo'),
(70, '34436314', 'MATIAS EZEQUIEL', 'URSO', '00127790002\"URSO\"MATIAS EZEQUIEL\"M\"34436314\"A\"15-02-1989\"06-08-2012', 'paula.dipaolo'),
(71, '26372242', 'MARIA VICTORIA', 'BOURIO', '00283894265\"BOURIO\"MARIA VICTORIA\"F\"26372242\"B\"21-11-1977\"25-07-2014', 'paula.dipaolo'),
(72, '17424239', 'CLAUDIA LILIANA', 'LATORRE', '00544887249\"LATORRE\"CLAUDIA LILIANA\"F\"17424239\"B\"08-05-1965\"23-04-2018\"274', 'paula.dipaolo'),
(73, '17895612', 'CLAUDIA ROSANA', 'OLIVIERI', '\"17895612    \"A\"1\"OLIVIERI\"CLAUDIA ROSANA\"ARGENTINA\"10-11-1965\"F\"19-11-2010\"00028645070\"8235 \"19-11-2025\"213\"0\"ILRÃ‘01.2 CÃ‘100817.01\"UNIDAD #09 ]] S-NÃ‘ 0040:2008::0009', 'mariela.ronsino'),
(74, '13773583', 'CARLOS EMILIO', 'RODRIGUEZ', '\"13773583    \"A\"1\"RODRIGUEZ\"CARLOS EMILIO\"ARGENTINA\"19-10-1959\"M\"21-07-2011\"00061073760\"8224 \"21-07-2026\"273\"0\"ILRÃ‘2.01 CÃ‘110613.02 )No Cap.=\"UNIDAD #20 ]] S-NÃ‘ 0040:2008::00__', 'mariela.ronsino'),
(75, '32869246', 'MARTIN EZEQUIEL', 'JAIME', '00545416771\"JAIME\"MARTIN EZEQUIEL\"M\"32869246\"C\"24-03-1987\"24-04-2018\"206', 'mariela.ronsino'),
(76, '17806552', 'MARCELA NORA', 'BUSTAMANTE', '00220140344\"BUSTAMANTE\"MARCELA NORA\"F\"17806552\"B\"06-03-1966\"23-09-2013', 'mariela.ronsino'),
(77, '29355300', 'YESICA ESTEFANIA', 'ALEGRE', '00203096695\"ALEGRE\"YESICA ESTEFANIA\"F\"29355300\"A\"21-12-1981\"07-07-2013', 'mariela.ronsino'),
(78, '21457514', 'CARINA ANDREA', 'ZAZZARINI', '00166097327\"ZAZZARINI\"CARINA ANDREA\"F\"21457514\"B\"22-12-1969\"18-02-2013', 'mariela.ronsino'),
(79, '18241012', 'OSBALDO RAMN', 'BARBOZA', '00538547657\"BARBOZA\"OSBALDO RAMN\"M\"18241012\"B\"08-11-1966\"08-03-2018\"209', 'mariela.ronsino'),
(80, '32641506', 'LEANDRO DAVID', 'PERATA', '00311199081\"PERATA\"LEANDRO DAVID\"M\"32641506\"B\"10-10-1986\"31-10-2014\"206', 'paula.dipaolo'),
(81, '22948527', 'INGRID MARION', 'ZARATE', '00267357486\"ZARATE\"INGRID MARION\"F\"22948527\"B\"24-10-1972\"22-05-2014', 'melisa.zurawsky'),
(82, '22929345', 'SILVIA LILIANA', 'MILLER', '00216188158\"MILLER\"SILVIA LILIANA\"F\"22929345\"B\"07-10-1972\"03-09-2013', 'melisa.zurawsky'),
(83, '22240009', 'marisa concepcion', 'nardozzi', NULL, 'melisa.zurawsky'),
(84, '26060204', 'maria alejandra', 'cabaglio', NULL, 'melisa.zurawsky'),
(85, '26060204', 'MARA ALEJANDRA', 'GABAGLIO', '00268171145\"GABAGLIO\"MARA ALEJANDRA\"F\"26060204\"A\"14-06-1977\"26-05-2014', 'melisa.zurawsky'),
(86, '28670952', 'NICOLAS', 'GUERELLO', '00252548818\"GUERELLO\"NICOLAS\"M\"28670952\"A\"09-02-1981\"13-03-2014', 'melisa.zurawsky'),
(87, '14575591', 'PATRICIA GRACIELA', 'SARTI', '00411963724\"SARTI\"PATRICIA GRACIELA\"F\"14575591\"B\"02-08-1961\"14-12-2015\"279', 'melisa.zurawsky'),
(88, '31145944', 'GABRIEL ALBERTO', 'PRADO', '00239355715\"PRADO\"GABRIEL ALBERTO\"M\"31145944\"A\"23-03-1985\"14-01-2014', 'mariela.ronsino'),
(89, '24576497', 'MARCELA CLAUDIA', 'GARAVAGLIA', '00558183546\"GARAVAGLIA\"MARCELA CLAUDIA\"F\"24576497\"B\"12-10-1975\"13-08-2018\"274', 'mariela.ronsino'),
(90, '25488775', 'VERA VIVIANA', 'CABALLERO', '00590324214\"CABALLERO\"VERA VIVIANA\"F\"25488775\"C\"28-10-1976\"11-04-2019\"272', 'mariela.ronsino'),
(91, '20864138', 'VALERIA MARIA GRISELDA', 'PEREZZON', '\"20864138    \"A\"1\"PEREZZON\"VALERIA MARIA GRISELDA\"ARGENTINA\"23-04-1969\"F\"12-07-2010\"00014825292\"3295 \"12-07-2025\"551\"0\"ILRÃ‘01.2 CÃ‘100614.02\"UNIDAD #02 ]] S-NÃ‘ 0040:2008::0006', 'mariela.ronsino'),
(92, '37557854', 'MARIA CAROLINA', 'CUMO', '00501585179\"CUMO\"MARIA CAROLINA\"F\"37557854\"C\"18-05-1993\"29-06-2017\"274', 'mariela.ronsino'),
(93, '16135425', 'OSCAR RUBEN', 'CASALE', '00251238488\"CASALE\"OSCAR RUBEN\"M\"16135425\"B\"31-12-1962\"06-03-2014', 'mariela.ronsino'),
(94, '25445028', 'VIVIANA ANAHI', 'AVELLANEDA', '00549888532\"AVELLANEDA\"VIVIANA ANAHI\"F\"25445028\"B\"17-07-1976\"29-05-2018\"271', 'mariela.ronsino'),
(95, '33035196', 'HUGO GABRIEL', 'LOBO', '00360566322\"LOBO\"HUGO GABRIEL\"M\"33035196\"C\"05-05-1987\"17-04-2015\"239', 'melisa.zurawsky'),
(96, '32863503', 'CECILIA YANEL', 'BAEZ', '00512269888\"BAEZ\"CECILIA YANEL\"F\"32863503\"C\"16-02-1987\"31-08-2017\"273', 'melisa.zurawsky'),
(97, '28749986', 'PABLO', 'RODRIGU', '00545290302\"RODRIGU\"PABLO\"M\"28749986\"D\"02-03-1981\"25-04-2018\"209', 'mariela.ronsino'),
(98, '32343853', 'FELIPE', 'LLORENTE', '00255403082\"LLORENTE\"FELIPE\"M\"32343853\"B\"15-01-1986\"26-03-2014', 'mariela.ronsino'),
(99, '29485516', 'PABLO JULIAN', 'MISURACA', '\"29485516    \"A\"1\"MISURACA\"PABLO JULIAN\"ARGENTINA\"11-04-1982\"M\"19-02-2010\"00004866136\"3295\"5210\"ILRÃ‘01.11 CÃ‘100210.01\"UNIDAD #04  ]] S-NÃ‘ 0040:2008::0003', 'mariela.ronsino'),
(100, '25600277', 'NERINA ROXANA MABEL', 'COLS', '00536413084\"COLS\"NERINA ROXANA MABEL\"F\"25600277\"C\"27-10-1976\"23-02-2018\"274', 'mariela.ronsino'),
(101, '33777392', 'NAIR JESICA', 'PUGLIESE', '\"33777392    \"A\"1\"PUGLIESE\"NAIR JESICA\"ARGENTINA\"15-06-1988\"F\"07-07-2011\"00058583594\"7020 \"07-07-2026\"434\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #C2 ]] S-NÃ‘ 0040:2009::0018', 'mariela.ronsino'),
(102, '28120884', 'GRACIELA VERONICA', 'GONZALEZ', '00384517025\"GONZALEZ\"GRACIELA VERONICA\"F\"28120884\"B\"18-04-1980\"07-07-2015\"270', 'mariela.ronsino'),
(103, '33298967', 'VICTORIA MARIA BELEN', 'QUIROGA', '00395617121\"QUIROGA\"VICTORIA MARIA BELEN\"F\"33298967\"B\"17-11-1987\"28-08-2015\"272', 'mariela.ronsino'),
(104, '14697621', 'CLAUDIO ALBERTO', 'ROSSI', '00322516212\"ROSSI\"CLAUDIO ALBERTO\"M\"14697621\"A\"08-04-1962\"20-11-2014\"203', 'paula.dipaolo'),
(105, '27848730', 'JUAN GUILLERMO', 'LIONETTI', '00445596302\"LIONETTI\"JUAN GUILLERMO\"M\"27848730\"B\"07-03-1980\"13-07-2016\"200', 'paula.dipaolo'),
(106, '14566722', 'MARTA GRACIELA', 'ESPECHE', '00347680582\"ESPECHE\"MARTA GRACIELA\"F\"14566722\"B\"22-09-1961\"02-03-2015\"234', 'mariela.ronsino'),
(107, '18073311', 'CLAUDIA ALEJANDRA', 'JUDYCKI', '00362479149\"JUDYCKI\"CLAUDIA ALEJANDRA\"F\"18073311\"E\"04-05-1966\"23-04-2015\"271', 'mariela.ronsino'),
(108, '16490781', 'LUIS MIGUEL', 'RODRIGUEZ BRUNENGO', '00312571375\"RODRIGUEZ BRUNENGO\"LUIS MIGUEL\"M\"16490781\"A\"03-11-1963\"28-10-2014\"204', 'mariela.ronsino'),
(109, '25689402', 'SILVINA ANAHI', 'GARCIA', '00410235123\"GARCIA\"SILVINA ANAHI\"F\"25689402\"B\"12-10-1976\"25-11-2015\"270', 'mariela.ronsino'),
(110, '12964477', 'PABLO JORGE', 'SALOMONE', '00166491910\"SALOMONE\"PABLO JORGE\"M\"12964477\"A\"12-06-1957\"08-02-2013', 'mariela.ronsino'),
(111, '26708510', 'JESSICA PAOLA', 'BOSSI EVRETT', '\"26708510    \"C\"1\"BOSSI EVRETT\"JESSICA PAOLA\"ARGENTINA\"12-07-1978\"F\"26-10-2010\"00026129109\"3295 \"26-10-2025\"545\"0\"ILRÃ‘01.2 CÃ‘100817.01\"UNIDAD #05 ]] S-NÃ‘ 0040:2008::0005', 'mariela.ronsino'),
(112, '29305117', 'LUISA FERNANDA', 'QUIROGA', '00398188802\"QUIROGA\"LUISA FERNANDA\"F\"29305117\"B\"22-01-1982\"10-09-2015\"273', 'mariela.ronsino'),
(113, '28753484', 'KARINA GLADYS', 'MEDINA ARAGON', '00476972437\"MEDINA ARAGON\"KARINA GLADYS\"F\"28753484\"C\"26-03-1981\"16-02-2017\"277', 'mariela.ronsino'),
(114, '16088119', 'OSCAR VALENTN', 'RUIZ DIAZ', '00541352473\"RUIZ DIAZ\"OSCAR VALENTN\"M\"16088119\"D\"20-01-1963\"22-03-2018\"205', 'mariela.ronsino'),
(115, '14259451', 'MONICA GRACIELA', 'BARRIONUEVO', '00396187348\"BARRIONUEVO\"MONICA GRACIELA\"F\"14259451\"B\"30-11-1960\"01-09-2015\"275', 'mariela.ronsino'),
(116, '25047657', 'ROMINA', 'BORJA', NULL, 'mariela.ronsino'),
(117, '32863479', 'NADIA ANTONELA', 'STRUBIA', NULL, 'mariela.ronsino'),
(118, '20410496', 'GONZALO', 'MIRANDA', '00162084472\"MIRANDA\"GONZALO\"M\"20410496\"B\"25-08-1968\"18-01-2013', 'mariela.ronsino'),
(119, 'F6682160', 'GRISELDA ZULMA', 'SURRACO', '00251962379\"SURRACO\"GRISELDA ZULMA\"F\"F6682160\"A\"01-08-1951\"11-03-2014', 'mariela.ronsino'),
(120, '16286275', 'DORA TERESITA', 'VALLE', '00316763731\"VALLE\"DORA TERESITA\"F\"16286275\"A\"13-07-1962\"27-11-2014\"273', 'mariela.ronsino'),
(121, '18003082', 'MARIA CAROLINA', 'LEDA', '00271871975\"LEDA\"MARIA CAROLINA\"F\"18003082\"B\"29-10-1966\"10-06-2014', 'mariela.ronsino'),
(122, '26429000', 'Juan Manuel', 'Assirio', NULL, 'paula.dipaolo'),
(123, '17482703', 'HORACIO ALFREDO', 'CALDERONI', '00191811442\"CALDERONI\"HORACIO ALFREDO\"M\"17482703\"A\"14-10-1965\"17-05-2013', 'paula.dipaolo'),
(124, '30427571', 'CAROLINA SUSANA', 'IOMHA', '00240400857\"IOMHA\"CAROLINA SUSANA\"F\"30427571\"B\"26-09-1983\"17-01-2014', 'paula.dipaolo'),
(125, '25312394', 'MIGUEL', 'IZURIETA', '00303960892\"IZURIETA\"MIGUEL\"F\"25312394\"B\"27-10-1976\"04-10-2014\"200', 'paula.dipaolo'),
(126, '33333730', 'CRISTIAN MAURO', 'DEFOOZ', '00302200406\"DEFOOZ\"CRISTIAN MAURO\"M\"33333730\"A\"28-09-1987\"23-09-2014\"205', 'paula.dipaolo'),
(127, '28365611', 'LEONARDO MARTIN', 'VARGAS', '00365494952\"VARGAS\"LEONARDO MARTIN\"M\"28365611\"A\"22-08-1980\"05-05-2015\"200', 'paula.dipaolo'),
(128, '32905727', 'ARIEL ERNESTO', 'BLANCO SARRAILHE', '\"32905727    \"A\"1\"BLANCO SARRAILHE\"ARIEL ERNESTO\"ARGENTINA\"14-06-1987\"M\"28-04-2011\"00047372219\"7006 \"28-04-2026\"4\"0\"ILRÃ‘2.01 CÃ‘110223.01 )No Cap.=\"UNIDAD #11 ]] S-NÃ‘ 0040:2008::0013', 'paula.dipaolo'),
(129, '32742327', 'MARCELA ADRIANA', 'DELGADO', '00417676018\"DELGADO\"MARCELA ADRIANA\"F\"32742327\"B\"31-10-1986\"27-01-2016\"234', 'paula.dipaolo'),
(130, '29801965', 'DANIEL FERNANDO', 'PERFUMO', '00502490790\"PERFUMO\"DANIEL FERNANDO\"M\"29801965\"C\"15-10-1982\"04-07-2017\"206', 'paula.dipaolo'),
(131, '24256481', 'CARINA BEATRIZ', 'DURE', '\"24256481    \"A\"1\"DURE\"CARINA BEATRIZ\"ARGENTINA\"11-03-1975\"F\"28-06-2010\"00013605164\"3295 \"28-06-2025\"257\"0\"ILRÃ‘01.2 CÃ‘100614.02\"UNIDAD #05 ]] S-NÃ‘ 0040:2008::0005', 'paula.dipaolo'),
(132, '18394641', 'MIGUEL PATRICIO', 'PISCITELI', NULL, 'paula.dipaolo'),
(133, '33903956', 'JAVIER', 'CERNADAS', '00255255424\"CERNADAS\"JAVIER\"M\"33903956\"C\"02-12-1988\"26-03-2014', 'paula.dipaolo'),
(134, '30667369', 'SANTIAGO ANDRES', 'RIMOLDI', '00446408869\"RIMOLDI\"SANTIAGO ANDRES\"M\"30667369\"B\"26-12-1983\"19-07-2016\"207', 'paula.dipaolo'),
(135, '17567488', 'GUSTAVO JOSE', 'LOPEZ', '00278064602\"LOPEZ\"GUSTAVO JOSE\"M\"17567488\"A\"31-12-1965\"04-07-2014', 'paula.dipaolo'),
(136, '22870100', 'MARIA PAZ', 'BECERRA', '00263705691\"BECERRA\"MARIA PAZ\"F\"22870100\"B\"26-11-1972\"07-05-2014', 'paula.dipaolo'),
(137, '14721976', 'NELIDA ANTONIA', 'DE VUONO', '\"14721976    \"A\"1\"DE VUONO\"NELIDA ANTONIA\"ARGENTINA\"07-06-1962\"F\"08-02-2010\"00004212147\"7000\"4480\"ILRÃ‘01.11 CÃ‘100201.03\"UNIDAD #07 ]] S-NÃ‘ 0040:2008::0002', 'paula.dipaolo'),
(138, '34449386', 'ELIZABETH SOLANGE', 'FERRO', '00561837938\"FERRO\"ELIZABETH SOLANGE\"F\"34449386\"E\"02-01-1989\"28-08-2018\"279', 'paula.dipaolo'),
(139, '34430671', 'SOFIA', 'PEREZ HILERO', '\"34430671    \"A\"1\"PEREZ HILERO\"SOFIA\"ARGENTINA\"01-03-1989\"F\"03-09-2011\"00068932422\"7006 \"03-09-2026\"628\"0\"ILRÃ‘2.01 CÃ‘110613.02 )No Cap.=\"UNIDAD #06 ]] S-NÃ‘ 0040:2008::0008', 'melisa.zurawsky'),
(140, '40393718', 'LAUTARO', 'CHIAPPERO', '0\"CHIAPPERO\"LAUTARO\"M\"40393718\"B\"14-05-1997\"05-06-2017\"206', 'melisa.zurawsky'),
(141, '40393718', 'chiappero', 'lautaro', NULL, 'melisa.zurawsky');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `id_persona`, `fecha`, `tipo`, `user`) VALUES
(1, 1, '2019-04-30 14:21:00', 'e', ''),
(2, 1, '2019-04-30 14:50:00', 's', ''),
(3, 2, '2019-04-30 15:46:38', 'e', ''),
(4, 2, '2019-04-30 16:42:40', 'e', ''),
(5, 3, '2019-05-02 08:15:30', 'e', ''),
(6, 3, '2019-05-02 09:08:16', 's', ''),
(7, 4, '2019-05-02 09:21:17', 'e', ''),
(8, 5, '2019-05-02 09:22:37', 'e', ''),
(9, 6, '2019-05-02 09:26:23', 'e', ''),
(10, 4, '2019-05-02 09:34:21', 's', ''),
(11, 6, '2019-05-02 10:09:51', 's', ''),
(12, 7, '2019-05-02 10:12:38', 'e', ''),
(13, 5, '2019-05-02 10:19:39', 's', ''),
(14, 7, '2019-05-02 10:39:39', 's', ''),
(15, 8, '2019-05-02 10:41:03', 'e', ''),
(16, 8, '2019-05-02 10:54:50', 's', ''),
(17, 9, '2019-05-02 10:59:31', 'e', ''),
(18, 10, '2019-05-02 10:59:35', 'e', ''),
(19, 11, '2019-05-02 11:04:38', 'e', ''),
(20, 12, '2019-05-02 11:07:34', 'e', ''),
(21, 10, '2019-05-02 11:26:00', 's', ''),
(22, 9, '2019-05-02 11:26:05', 's', ''),
(23, 11, '2019-05-02 11:42:21', 's', ''),
(24, 12, '2019-05-02 11:54:04', 's', ''),
(25, 13, '2019-05-02 14:34:05', 'e', 'mariela.ronsino'),
(26, 14, '2019-05-02 14:35:03', 'e', 'mariela.ronsino'),
(27, 13, '2019-05-02 14:52:50', 's', 'mariela.ronsino'),
(28, 14, '2019-05-02 14:54:19', 's', 'mariela.ronsino'),
(29, 15, '2019-05-02 15:11:41', 'e', 'mariela.ronsino'),
(30, 16, '2019-05-02 15:12:00', 'e', 'mariela.ronsino'),
(31, 17, '2019-05-02 15:22:43', 's', 'mariela.ronsino'),
(32, 18, '2019-05-02 15:32:59', 'e', 'mariela.ronsino'),
(33, 17, '2019-05-02 15:05:00', 'e', 'mariela.ronsino'),
(34, 15, '2019-05-02 15:40:24', 's', 'mariela.ronsino'),
(35, 16, '2019-05-02 15:40:36', 's', 'mariela.ronsino'),
(36, 18, '2019-05-02 15:57:55', 's', 'mariela.ronsino'),
(37, 19, '2019-05-03 09:10:41', 'e', 'mariela.ronsino'),
(38, 19, '2019-05-03 09:42:49', 's', 'mariela.ronsino'),
(39, 20, '2019-05-03 10:17:04', 'e', 'mariela.ronsino'),
(40, 21, '2019-05-03 10:26:43', 'e', 'mariela.ronsino'),
(41, 22, '2019-05-03 10:28:35', 'e', 'mariela.ronsino'),
(42, 20, '2019-05-03 10:42:29', 's', 'mariela.ronsino'),
(43, 21, '2019-05-03 10:58:52', 's', 'mariela.ronsino'),
(44, 22, '2019-05-03 10:58:57', 's', 'mariela.ronsino'),
(45, 23, '2019-05-03 11:00:34', 'e', 'mariela.ronsino'),
(46, 24, '2019-05-03 11:01:06', 'e', 'mariela.ronsino'),
(47, 23, '2019-05-03 11:26:09', 's', 'mariela.ronsino'),
(48, 24, '2019-05-03 11:26:15', 's', 'mariela.ronsino'),
(49, 25, '2019-05-03 11:29:22', 'e', 'mariela.ronsino'),
(50, 25, '2019-05-03 11:47:29', 's', 'mariela.ronsino'),
(51, 26, '2019-05-03 12:40:33', 'e', 'mariela.ronsino'),
(52, 26, '2019-05-03 13:15:23', 's', 'mariela.ronsino'),
(53, 27, '2019-05-03 13:38:34', 'e', 'mariela.ronsino'),
(54, 28, '2019-05-03 14:01:32', 'e', 'mariela.ronsino'),
(55, 27, '2019-05-03 14:07:51', 's', 'mariela.ronsino'),
(56, 29, '2019-05-03 14:28:49', 'e', 'mariela.ronsino'),
(57, 30, '2019-05-03 14:28:53', 'e', 'mariela.ronsino'),
(58, 28, '2019-05-03 14:35:19', 's', 'mariela.ronsino'),
(59, 30, '2019-05-03 14:56:02', 's', 'mariela.ronsino'),
(60, 29, '2019-05-03 14:56:09', 's', 'mariela.ronsino'),
(61, 31, '2019-05-06 10:34:41', 'e', 'mariela.ronsino'),
(62, 32, '2019-05-06 10:34:48', 'e', 'mariela.ronsino'),
(63, 31, '2019-05-06 10:59:45', 's', 'mariela.ronsino'),
(64, 33, '2019-05-06 10:50:00', 's', 'mariela.ronsino'),
(65, 34, '2019-05-06 11:13:59', 'e', 'mariela.ronsino'),
(66, 34, '2019-05-06 11:40:15', 's', 'mariela.ronsino'),
(67, 35, '2019-05-06 14:23:58', 'e', 'mariela.ronsino'),
(68, 11, '2019-05-06 14:32:06', 'e', 'mariela.ronsino'),
(69, 35, '2019-05-06 14:40:56', 's', 'mariela.ronsino'),
(70, 36, '2019-05-06 14:41:15', 'e', 'mariela.ronsino'),
(71, 11, '2019-05-06 14:54:45', 's', 'mariela.ronsino'),
(72, 36, '2019-05-06 15:02:30', 's', 'mariela.ronsino'),
(73, 37, '2019-05-07 10:47:41', 'e', 'mariela.ronsino'),
(74, 38, '2019-05-07 10:47:46', 'e', 'mariela.ronsino'),
(75, 39, '2019-05-07 10:55:06', 'e', 'mariela.ronsino'),
(76, 40, '2019-05-07 11:16:48', 'e', 'mariela.ronsino'),
(77, 41, '2019-05-07 11:23:58', 'e', 'mariela.ronsino'),
(78, 37, '2019-05-07 11:24:11', 's', 'mariela.ronsino'),
(79, 38, '2019-05-07 11:24:16', 's', 'mariela.ronsino'),
(80, 39, '2019-05-07 12:05:38', 's', 'mariela.ronsino'),
(81, 40, '2019-05-07 12:05:45', 's', 'mariela.ronsino'),
(82, 41, '2019-05-07 12:21:13', 's', 'mariela.ronsino'),
(83, 42, '2019-05-07 14:30:20', 'e', 'mariela.ronsino'),
(84, 42, '2019-05-07 14:30:23', 'e', 'mariela.ronsino'),
(85, 42, '2019-05-07 14:44:07', 's', 'mariela.ronsino'),
(86, 43, '2019-05-07 14:46:22', 'e', 'mariela.ronsino'),
(87, 44, '2019-05-07 14:46:30', 'e', 'mariela.ronsino'),
(88, 43, '2019-05-07 15:13:02', 's', 'mariela.ronsino'),
(89, 44, '2019-05-07 15:13:08', 's', 'mariela.ronsino'),
(90, 45, '2019-05-08 09:08:33', 'e', 'mariela.ronsino'),
(91, 45, '2019-05-08 09:26:47', 's', 'mariela.ronsino'),
(92, 46, '2019-05-08 11:29:27', 'e', 'mariela.ronsino'),
(93, 47, '2019-05-08 11:37:47', 'e', 'mariela.ronsino'),
(94, 46, '2019-05-08 11:43:55', 's', 'mariela.ronsino'),
(95, 48, '2019-05-08 11:45:34', 'e', 'mariela.ronsino'),
(96, 47, '2019-05-08 12:00:06', 's', 'mariela.ronsino'),
(97, 48, '2019-05-08 12:11:20', 's', 'mariela.ronsino'),
(98, 49, '2019-05-08 12:18:19', 'e', 'mariela.ronsino'),
(99, 49, '2019-05-08 12:33:53', 's', 'mariela.ronsino'),
(100, 50, '2019-05-08 14:19:26', 'e', 'mariela.ronsino'),
(101, 51, '2019-05-08 14:19:34', 'e', 'mariela.ronsino'),
(102, 52, '2019-05-08 14:35:35', 'e', 'mariela.ronsino'),
(103, 53, '2019-05-08 14:37:55', 'e', 'mariela.ronsino'),
(104, 50, '2019-05-08 14:41:46', 's', 'mariela.ronsino'),
(105, 51, '2019-05-08 14:41:50', 's', 'mariela.ronsino'),
(106, 54, '2019-05-08 15:25:23', 'e', 'mariela.ronsino'),
(107, 55, '2019-05-08 15:25:31', 'e', 'mariela.ronsino'),
(108, 55, '2019-05-08 16:10:10', 's', 'mariela.ronsino'),
(109, 54, '2019-05-08 16:10:15', 's', 'mariela.ronsino'),
(110, 56, '2019-05-09 08:56:46', 'e', 'mariela.ronsino'),
(111, 56, '2019-05-09 09:15:34', 's', 'mariela.ronsino'),
(112, 57, '2019-05-09 09:55:23', 'e', 'mariela.ronsino'),
(113, 57, '2019-05-09 10:08:27', 's', 'mariela.ronsino'),
(114, 58, '2019-05-09 10:36:53', 'e', 'mariela.ronsino'),
(115, 59, '2019-05-09 10:47:28', 'e', 'mariela.ronsino'),
(116, 58, '2019-05-09 10:51:14', 's', 'mariela.ronsino'),
(117, 60, '2019-05-09 11:15:34', 'e', 'mariela.ronsino'),
(118, 59, '2019-05-09 11:18:18', 's', 'mariela.ronsino'),
(119, 60, '2019-05-09 11:30:11', 's', 'mariela.ronsino'),
(120, 61, '2019-05-09 12:28:46', 'e', 'mariela.ronsino'),
(121, 61, '2019-05-09 12:38:09', 's', 'melisa.zurawsky'),
(122, 53, '2019-05-08 15:05:00', 's', 'paula.dipaolo'),
(123, 62, '2019-05-09 14:06:48', 'e', 'mariela.ronsino'),
(124, 63, '2019-05-09 14:08:48', 'e', 'mariela.ronsino'),
(125, 64, '2019-05-09 14:09:13', 'e', 'mariela.ronsino'),
(126, 62, '2019-05-09 14:09:00', 's', 'mariela.ronsino'),
(127, 65, '2019-05-09 14:22:01', 'e', 'mariela.ronsino'),
(128, 66, '2019-05-09 14:22:04', 'e', 'mariela.ronsino'),
(129, 64, '2019-05-09 14:27:56', 's', 'mariela.ronsino'),
(130, 67, '2019-05-09 14:34:25', 'e', 'melisa.zurawsky'),
(131, 63, '2019-05-09 14:43:25', 's', 'melisa.zurawsky'),
(132, 65, '2019-05-09 14:43:35', 's', 'melisa.zurawsky'),
(133, 66, '2019-05-09 14:43:42', 's', 'melisa.zurawsky'),
(134, 68, '2019-05-09 15:20:44', 'e', 'melisa.zurawsky'),
(135, 67, '2019-05-09 15:28:19', 's', 'melisa.zurawsky'),
(136, 68, '2019-05-09 15:37:51', 's', 'melisa.zurawsky'),
(137, 69, '2019-05-10 09:02:43', 'e', 'paula.dipaolo'),
(138, 69, '2019-05-10 09:23:53', 's', 'paula.dipaolo'),
(139, 70, '2019-05-10 09:53:41', 'e', 'paula.dipaolo'),
(140, 71, '2019-05-10 09:53:45', 'e', 'paula.dipaolo'),
(141, 72, '2019-05-10 10:07:21', 'e', 'paula.dipaolo'),
(142, 70, '2019-05-10 10:14:46', 's', 'mariela.ronsino'),
(143, 71, '2019-05-10 10:14:51', 's', 'mariela.ronsino'),
(144, 72, '2019-05-10 10:26:47', 's', 'mariela.ronsino'),
(145, 73, '2019-05-10 10:41:30', 'e', 'mariela.ronsino'),
(146, 73, '2019-05-10 10:56:25', 's', 'mariela.ronsino'),
(147, 74, '2019-05-10 11:14:20', 'e', 'mariela.ronsino'),
(148, 75, '2019-05-10 11:14:42', 'e', 'mariela.ronsino'),
(149, 76, '2019-05-10 11:17:22', 'e', 'mariela.ronsino'),
(150, 75, '2019-05-10 11:39:59', 's', 'mariela.ronsino'),
(151, 74, '2019-05-10 11:40:05', 's', 'mariela.ronsino'),
(152, 76, '2019-05-10 11:44:24', 's', 'mariela.ronsino'),
(153, 77, '2019-05-10 11:55:57', 'e', 'mariela.ronsino'),
(154, 78, '2019-05-10 11:55:59', 'e', 'mariela.ronsino'),
(155, 79, '2019-05-10 12:07:57', 'e', 'mariela.ronsino'),
(156, 79, '2019-05-10 12:26:27', 's', 'mariela.ronsino'),
(157, 77, '2019-05-10 12:26:32', 's', 'mariela.ronsino'),
(158, 78, '2019-05-10 12:26:36', 's', 'mariela.ronsino'),
(159, 80, '2019-05-10 12:52:51', 'e', 'paula.dipaolo'),
(160, 81, '2019-05-10 14:03:41', 'e', 'melisa.zurawsky'),
(161, 82, '2019-05-10 14:03:56', 'e', 'melisa.zurawsky'),
(162, 82, '2019-05-10 14:21:07', 's', 'mariela.ronsino'),
(163, 81, '2019-05-10 14:21:12', 's', 'mariela.ronsino'),
(164, 83, '2019-05-10 14:35:21', 'e', 'melisa.zurawsky'),
(165, 84, '2019-05-10 14:38:12', 'e', 'melisa.zurawsky'),
(166, 83, '2019-05-10 14:48:18', 's', 'mariela.ronsino'),
(167, 85, '2019-05-10 15:03:56', 's', 'melisa.zurawsky'),
(168, 86, '2019-05-10 15:51:51', 'e', 'melisa.zurawsky'),
(169, 87, '2019-05-10 16:30:07', 'e', 'melisa.zurawsky'),
(170, 86, '2019-05-10 16:38:04', 's', 'melisa.zurawsky'),
(171, 87, '2019-05-10 16:52:49', 's', 'melisa.zurawsky'),
(172, 88, '2019-05-13 09:32:20', 'e', 'mariela.ronsino'),
(173, 88, '2019-05-13 09:47:38', 's', 'mariela.ronsino'),
(174, 89, '2019-05-13 10:03:14', 'e', 'mariela.ronsino'),
(175, 90, '2019-05-13 10:03:17', 'e', 'mariela.ronsino'),
(176, 90, '2019-05-13 10:22:31', 's', 'mariela.ronsino'),
(177, 89, '2019-05-13 10:22:34', 's', 'mariela.ronsino'),
(178, 91, '2019-05-13 10:30:16', 'e', 'mariela.ronsino'),
(179, 91, '2019-05-13 10:38:12', 's', 'mariela.ronsino'),
(180, 92, '2019-05-13 10:39:13', 'e', 'mariela.ronsino'),
(181, 93, '2019-05-13 10:51:55', 'e', 'mariela.ronsino'),
(182, 92, '2019-05-13 10:57:02', 's', 'mariela.ronsino'),
(183, 93, '2019-05-13 11:05:55', 's', 'mariela.ronsino'),
(184, 94, '2019-05-13 11:17:53', 'e', 'mariela.ronsino'),
(185, 95, '2019-05-13 11:41:27', 'e', 'melisa.zurawsky'),
(186, 96, '2019-05-13 11:41:29', 'e', 'melisa.zurawsky'),
(187, 94, '2019-05-13 11:46:56', 's', 'melisa.zurawsky'),
(188, 95, '2019-05-13 12:03:58', 's', 'melisa.zurawsky'),
(189, 96, '2019-05-13 12:04:00', 's', 'melisa.zurawsky'),
(190, 97, '2019-05-13 12:13:38', 'e', 'mariela.ronsino'),
(191, 98, '2019-05-13 12:13:40', 'e', 'mariela.ronsino'),
(192, 97, '2019-05-13 12:27:59', 's', 'mariela.ronsino'),
(193, 98, '2019-05-13 12:28:02', 's', 'mariela.ronsino'),
(194, 99, '2019-05-13 13:55:25', 'e', 'mariela.ronsino'),
(195, 100, '2019-05-13 14:25:08', 'e', 'mariela.ronsino'),
(196, 101, '2019-05-13 14:25:13', 'e', 'mariela.ronsino'),
(197, 99, '2019-05-13 14:38:15', 's', 'mariela.ronsino'),
(198, 101, '2019-05-13 14:56:49', 's', 'mariela.ronsino'),
(199, 100, '2019-05-13 14:56:54', 's', 'mariela.ronsino'),
(200, 102, '2019-05-13 15:27:58', 'e', 'mariela.ronsino'),
(201, 102, '2019-05-13 15:42:27', 's', 'mariela.ronsino'),
(202, 99, '2019-05-13 15:54:43', 'e', 'mariela.ronsino'),
(203, 103, '2019-05-13 16:00:41', 'e', 'mariela.ronsino'),
(204, 99, '2019-05-13 16:08:01', 's', 'melisa.zurawsky'),
(205, 103, '2019-05-13 16:22:30', 's', 'melisa.zurawsky'),
(206, 104, '2019-05-14 09:19:24', 'e', 'paula.dipaolo'),
(209, 105, '2019-05-14 09:19:31', 'e', 'paula.dipaolo'),
(214, 104, '2019-05-14 09:26:59', 's', 'paula.dipaolo'),
(215, 106, '2019-05-14 09:36:43', 'e', 'mariela.ronsino'),
(216, 107, '2019-05-14 09:36:46', 'e', 'mariela.ronsino'),
(217, 108, '2019-05-14 09:39:23', 'e', 'mariela.ronsino'),
(218, 105, '2019-05-14 09:46:16', 's', 'mariela.ronsino'),
(219, 108, '2019-05-14 09:55:10', 's', 'mariela.ronsino'),
(220, 107, '2019-05-14 10:04:33', 's', 'mariela.ronsino'),
(221, 106, '2019-05-14 10:04:37', 's', 'mariela.ronsino'),
(222, 109, '2019-05-14 10:35:54', 'e', 'mariela.ronsino'),
(223, 110, '2019-05-14 10:52:07', 'e', 'mariela.ronsino'),
(224, 109, '2019-05-14 10:52:21', 's', 'mariela.ronsino'),
(225, 111, '2019-05-14 10:53:30', 'e', 'mariela.ronsino'),
(226, 112, '2019-05-14 11:15:26', 'e', 'mariela.ronsino'),
(227, 111, '2019-05-14 11:25:04', 's', 'mariela.ronsino'),
(228, 112, '2019-05-14 11:33:08', 's', 'mariela.ronsino'),
(229, 113, '2019-05-14 12:03:22', 'e', 'mariela.ronsino'),
(230, 114, '2019-05-14 12:08:57', 'e', 'mariela.ronsino'),
(231, 114, '2019-05-14 12:10:39', 's', 'mariela.ronsino'),
(232, 113, '2019-05-14 12:25:49', 's', 'mariela.ronsino'),
(233, 115, '2019-05-14 13:34:33', 'e', 'mariela.ronsino'),
(234, 116, '2019-05-14 13:34:52', 'e', 'mariela.ronsino'),
(235, 117, '2019-05-14 13:35:56', 'e', 'mariela.ronsino'),
(236, 117, '2019-05-14 13:38:58', 'e', 'mariela.ronsino'),
(237, 116, '2019-05-14 13:39:10', 'e', 'mariela.ronsino'),
(238, 117, '2019-05-14 13:39:43', 'e', 'mariela.ronsino'),
(239, 117, '2019-05-14 13:40:10', 'e', 'mariela.ronsino'),
(240, 118, '2019-05-14 14:04:07', 'e', 'mariela.ronsino'),
(241, 119, '2019-05-14 14:04:10', 'e', 'mariela.ronsino'),
(242, 117, '2019-05-14 14:11:33', 's', 'mariela.ronsino'),
(243, 115, '2019-05-14 14:11:37', 's', 'mariela.ronsino'),
(244, 116, '2019-05-14 14:11:43', 's', 'mariela.ronsino'),
(245, 120, '2019-05-14 14:13:58', 'e', 'mariela.ronsino'),
(246, 120, '2019-05-14 14:28:04', 's', 'mariela.ronsino'),
(247, 121, '2019-05-14 14:31:05', 'e', 'mariela.ronsino'),
(248, 119, '2019-05-14 14:36:14', 's', 'mariela.ronsino'),
(249, 118, '2019-05-14 14:36:20', 's', 'mariela.ronsino'),
(250, 121, '2019-05-14 14:53:11', 's', 'mariela.ronsino'),
(251, 122, '2019-05-15 09:08:40', 'e', 'paula.dipaolo'),
(252, 123, '2019-05-15 09:28:27', 'e', 'paula.dipaolo'),
(253, 124, '2019-05-15 09:39:01', 'e', 'paula.dipaolo'),
(254, 125, '2019-05-15 09:39:06', 'e', 'paula.dipaolo'),
(255, 126, '2019-05-15 09:39:10', 'e', 'paula.dipaolo'),
(256, 127, '2019-05-15 09:39:17', 'e', 'paula.dipaolo'),
(257, 122, '2019-05-15 09:41:08', 's', 'paula.dipaolo'),
(258, 128, '2019-05-15 09:47:47', 'e', 'paula.dipaolo'),
(259, 129, '2019-05-15 09:47:50', 'e', 'paula.dipaolo'),
(260, 130, '2019-05-15 09:55:36', 'e', 'paula.dipaolo'),
(261, 130, '2019-05-15 10:06:46', 's', 'paula.dipaolo'),
(262, 131, '2019-05-15 10:19:52', 'e', 'paula.dipaolo'),
(263, 132, '2019-05-15 10:34:49', 'e', 'paula.dipaolo'),
(264, 131, '2019-05-15 10:36:26', 's', 'paula.dipaolo'),
(265, 132, '2019-05-15 10:50:33', 's', 'paula.dipaolo'),
(266, 127, '2019-05-15 10:51:30', 's', 'paula.dipaolo'),
(267, 125, '2019-05-15 10:51:48', 's', 'paula.dipaolo'),
(268, 124, '2019-05-15 10:52:03', 's', 'paula.dipaolo'),
(269, 123, '2019-05-15 10:53:21', 's', 'paula.dipaolo'),
(270, 133, '2019-05-15 10:56:55', 'e', 'paula.dipaolo'),
(271, 134, '2019-05-15 10:56:58', 'e', 'paula.dipaolo'),
(272, 135, '2019-05-15 11:01:07', 'e', 'paula.dipaolo'),
(273, 135, '2019-05-15 11:19:34', 's', 'paula.dipaolo'),
(274, 136, '2019-05-15 11:27:06', 'e', 'paula.dipaolo'),
(275, 134, '2019-05-15 11:37:30', 's', 'paula.dipaolo'),
(276, 133, '2019-05-15 11:37:49', 's', 'paula.dipaolo'),
(277, 128, '2019-05-15 11:38:01', 's', 'paula.dipaolo'),
(278, 129, '2019-05-15 11:38:07', 's', 'paula.dipaolo'),
(279, 126, '2019-05-15 11:38:21', 's', 'paula.dipaolo'),
(281, 137, '2019-05-15 11:40:11', 'e', 'paula.dipaolo'),
(282, 136, '2019-05-15 11:44:22', 's', 'paula.dipaolo'),
(283, 137, '2019-05-15 11:54:20', 's', 'paula.dipaolo'),
(284, 138, '2019-05-15 14:07:29', 'e', 'paula.dipaolo'),
(285, 138, '2019-05-15 14:19:38', 's', 'paula.dipaolo'),
(286, 139, '2019-05-15 14:38:57', 'e', 'melisa.zurawsky'),
(287, 139, '2019-05-15 15:19:52', 's', 'melisa.zurawsky'),
(288, 140, '2019-05-15 15:19:53', 's', 'melisa.zurawsky'),
(289, 141, '2019-05-15 14:21:00', 'e', 'melisa.zurawsky');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `indice_id_persona` (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
