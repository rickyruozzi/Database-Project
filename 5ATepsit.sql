-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Ott 13, 2023 alle 10:55
-- Versione del server: 5.7.40-0ubuntu0.18.04.1
-- Versione PHP: 7.2.24-0ubuntu0.18.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `5ATepsit`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_dario_foroni`
--

CREATE TABLE `clienti_dario_foroni` (
  `id` int(255) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cognome` varchar(40) NOT NULL,
  `posizione_lavorativa` varchar(40) NOT NULL,
  `data_ass` date NOT NULL,
  `data_n` date NOT NULL,
  `luogo_n` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_dario_foroni`
--

INSERT INTO `clienti_dario_foroni` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_ass`, `data_n`, `luogo_n`) VALUES
(1, 'dario', 'foroni', 'magazziono', '2023-09-04', '2023-08-22', 'Reggio'),
(3, 'iacopo', 'ferrari', 'professore', '2020-09-15', '1990-12-12', 'Correggio');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_diego_piccinini`
--

CREATE TABLE `clienti_diego_piccinini` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_diego_piccinini`
--

INSERT INTO `clienti_diego_piccinini` (`id`, `nome`, `cognome`, `telefono`) VALUES
(1, 'diego', 'piccinini', '3274340909'),
(2, 'koddu', 'Via Correggio', '3284561232'),
(3, 'giulio', 'guadasoni', '1237894565');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_francesco_balotta`
--

CREATE TABLE `clienti_francesco_balotta` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `pos_lavorativa` varchar(1024) NOT NULL,
  `data_assunzione` date NOT NULL,
  `telefono` int(255) DEFAULT NULL,
  `indirizzo_casa` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_francesco_ferriolo`
--

CREATE TABLE `clienti_francesco_ferriolo` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `agente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_leonardo_malaguti`
--

CREATE TABLE `clienti_leonardo_malaguti` (
  `id` int(250) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `posizione_lavorativa` varchar(30) NOT NULL,
  `data_di_assunzione` date NOT NULL,
  `data_corrente` date NOT NULL,
  `luogo_di_nascita` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_leonardo_malaguti`
--

INSERT INTO `clienti_leonardo_malaguti` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_di_assunzione`, `data_corrente`, `luogo_di_nascita`) VALUES
(1, 'samuele', 'zaccaria', 'topG', '2023-09-01', '2023-09-08', 'scampia '),
(2, 'niko', 'martucci', 'barbone', '2023-09-05', '2023-09-02', 'caserta');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_marco_santini`
--

CREATE TABLE `clienti_marco_santini` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_marco_santini`
--

INSERT INTO `clienti_marco_santini` (`id`, `nome`, `cognome`, `indirizzo`, `telefono`, `agente`) VALUES
(1, 'Padre', 'Pio', 'Posillipo', '64', 456),
(2, 'Marco', 'Santini', 'Clementi', '123456', 5),
(125, 'Piccio', 'Pineta', 'Novellara', '678910', 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_martucci_nicolo`
--

CREATE TABLE `clienti_martucci_nicolo` (
  `id` int(250) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `pos_lav` varchar(30) NOT NULL,
  `data_ass` date NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `luogo_nasc` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_martucci_nicolo`
--

INSERT INTO `clienti_martucci_nicolo` (`id`, `nome`, `cognome`, `pos_lav`, `data_ass`, `data_nasc`, `luogo_nasc`) VALUES
(1, 'nico', 'martucci', 'operaio', '2023-09-12', '2023-09-27', 'napoli'),
(2, 'sami', 'hamil', 'manager', '2023-09-01', '2023-09-03', 'marocco'),
(4, 'mala', 'leo', 'bodibilder', '2023-09-03', '2023-10-07', 'cortina');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_Ruozzi_Riccardo`
--

CREATE TABLE `clienti_Ruozzi_Riccardo` (
  `id` int(250) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `pos_lav` varchar(30) NOT NULL,
  `data_ass` date NOT NULL,
  `data_nasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_Ruozzi_Riccardo`
--

INSERT INTO `clienti_Ruozzi_Riccardo` (`id`, `nome`, `cognome`, `pos_lav`, `data_ass`, `data_nasc`) VALUES
(1, 'Riccardo', 'Ruozzi', 'Studente', '2023-09-26', '2005-10-19'),
(2, 'Mario', 'Rossi', 'Insegnante', '2023-10-03', '1981-10-05');

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti_samuele_zaccarelli`
--

CREATE TABLE `clienti_samuele_zaccarelli` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `data_nascita` date NOT NULL,
  `luogo_nascita` varchar(30) NOT NULL,
  `posizione_lavorativa` varchar(30) NOT NULL,
  `data_assunzione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti_samuele_zaccarelli`
--

INSERT INTO `clienti_samuele_zaccarelli` (`id`, `nome`, `cognome`, `data_nascita`, `luogo_nascita`, `posizione_lavorativa`, `data_assunzione`) VALUES
(1, 'Samuele', 'Zaccarelli', '2005-04-28', 'Carpi', 'Programmatore', '2023-05-29'),
(2, 'Iacopo', 'Ferrari', '2023-10-11', 'Carpi', 'Programmatore', '2023-10-05');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_dario_benzi`
--

CREATE TABLE `dipendenti_dario_benzi` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `posizione_lavorativa` varchar(20) NOT NULL,
  `data_assunzione` date NOT NULL,
  `data_nascita` date NOT NULL,
  `turno` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_dario_benzi`
--

INSERT INTO `dipendenti_dario_benzi` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_assunzione`, `data_nascita`, `turno`) VALUES
(1, 'ugo', 'paciugo', 'capo_ufficio', '2023-09-13', '2023-09-04', '2023-09-06'),
(2, 'luca', 'rossi', 'dipendente', '2023-09-26', '2023-09-25', '2023-09-26'),
(3, 'ciro', 'esposito', 'tecnico', '2023-09-28', '2023-09-27', '2023-09-01');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_davide_verdino`
--

CREATE TABLE `dipendenti_davide_verdino` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `posizione lavorativa` varchar(100) NOT NULL,
  `data di assunzione` date NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_davide_verdino`
--

INSERT INTO `dipendenti_davide_verdino` (`id`, `nome`, `cognome`, `posizione lavorativa`, `data di assunzione`, `telefono`, `indirizzo`) VALUES
(1, 'Gordon', 'Freeman', 'fisico_teorico', '1998-07-12', '123 456 7891', 'black_mesa_12'),
(2, 'Michele', 'Salvemini', 'rapper', '2006-03-23', '123 444 5512', 'Corso_Cavour_1'),
(5, 'Laszlo', 'Martinez', 'ingegnere_informatico', '2004-11-16', '123 456 7274', 'city_17'),
(6, 'Ajay', 'Ghal', 'fattorino', '2023-10-26', '123 456 7663', 'via della costituzione 6');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_david_savin`
--

CREATE TABLE `dipendenti_david_savin` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL,
  `ruolo` varchar(100) NOT NULL,
  `stipendio` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_david_savin`
--

INSERT INTO `dipendenti_david_savin` (`id`, `nome`, `indirizzo`, `telefono`, `agente`, `ruolo`, `stipendio`) VALUES
(25092005, 'david', 'Via Dossetti 24', '3891717249', 123456789, 'dipendente', 1900);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_deiana_andrea_mario`
--

CREATE TABLE `dipendenti_deiana_andrea_mario` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `posizione_lavorativa` varchar(20) NOT NULL,
  `settore_di_lavoro` varchar(20) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `data_di_assunzione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='1- per il turno 1 = diurno, 2 = notturno.';

--
-- Dump dei dati per la tabella `dipendenti_deiana_andrea_mario`
--

INSERT INTO `dipendenti_deiana_andrea_mario` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `settore_di_lavoro`, `turno`, `data_di_assunzione`) VALUES
(1, 'iacopo', 'ferrari', '3dw', '3dew', 'dd3', '2022-11-11');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_diego_piccinini`
--

CREATE TABLE `dipendenti_diego_piccinini` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_erika_boccadoro`
--

CREATE TABLE `dipendenti_erika_boccadoro` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `posizione_lavorativa` varchar(20) NOT NULL,
  `data_assunzione` varchar(20) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_erika_boccadoro`
--

INSERT INTO `dipendenti_erika_boccadoro` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_assunzione`, `data_nascita`, `mail`) VALUES
(1, 'erika', 'boccadoro', 'ufficio', '25 ottobre 2020', '2005-10-27', 'erika.b@gmail.com');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_federico_oliva`
--

CREATE TABLE `dipendenti_federico_oliva` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `posizione_lavorativa` varchar(20) NOT NULL,
  `data_di_assunzione` date NOT NULL,
  `codice_fiscale` varchar(20) NOT NULL,
  `data_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_federico_oliva`
--

INSERT INTO `dipendenti_federico_oliva` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_di_assunzione`, `codice_fiscale`, `data_nascita`) VALUES
(1, 'pippo', 'sdgsad', 'asdgasdg', '2023-10-18', 'sadfasdf', '2023-10-04');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_harman_singh`
--

CREATE TABLE `dipendenti_harman_singh` (
  `id` int(255) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `posizione_lavorativa` varchar(30) NOT NULL,
  `data_assunzione` date NOT NULL,
  `eta` int(99) NOT NULL,
  `indirizzo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_harman_singh`
--

INSERT INTO `dipendenti_harman_singh` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_assunzione`, `eta`, `indirizzo`) VALUES
(1, 'harman', 'singh', 'operaio', '2023-10-03', 18, 'RIO CITY'),
(2, 'niccolo', 'martucci', 'operaio', '2023-10-03', 18, 'rio saliceto');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_jacopo_nazzaro`
--

CREATE TABLE `dipendenti_jacopo_nazzaro` (
  `id` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `cognome` varchar(64) NOT NULL,
  `pos_lavorativa` varchar(64) NOT NULL,
  `data_assuzione` date NOT NULL,
  `compenso_annuale` double NOT NULL,
  `codice_fiscale` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_jacopo_nazzaro`
--

INSERT INTO `dipendenti_jacopo_nazzaro` (`id`, `nome`, `cognome`, `pos_lavorativa`, `data_assuzione`, `compenso_annuale`, `codice_fiscale`) VALUES
(1, 'jacopo1', 'nazzaro1', 'dip', '2000-11-01', 999, 'ABCABCABCAB'),
(2, 'jacopo2', 'nazzaro2', 'posto fisso', '2005-12-05', 20000, 'ABCABCABCAB');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_lorenzo_arfeli`
--

CREATE TABLE `dipendenti_lorenzo_arfeli` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL,
  `ore_settimanali` int(48) NOT NULL,
  `giorni_settimanali` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_lorenzo_arfeli`
--

INSERT INTO `dipendenti_lorenzo_arfeli` (`id`, `nome`, `indirizzo`, `telefono`, `agente`, `ore_settimanali`, `giorni_settimanali`) VALUES
(2, 'lorenzo', 'arfeli', '1234556', 2, 20, 5),
(3, 'giacomo', 'via popa', '332323444', 2, 45, 7),
(4, 'Lorenzo', 'Stalingrado', '31241', 1, 12, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_manuel_ghizzoni`
--

CREATE TABLE `dipendenti_manuel_ghizzoni` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `cognome` text NOT NULL,
  `posizione_lavorativa` text NOT NULL,
  `data_assunzione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stipendio` double NOT NULL,
  `responsabile` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_manuel_ghizzoni`
--

INSERT INTO `dipendenti_manuel_ghizzoni` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_assunzione`, `stipendio`, `responsabile`) VALUES
(2, 'Manuel', 'Ghizzoni', 'dip', '2022-10-12 17:39:04', 100, 0),
(4, 'Matteo', 'Vecchi', 'dipendente', '2020-11-11 23:00:00', 1, 1),
(6, 'Andrea', 'Pasini', 'dipendente', '2022-10-12 20:40:16', 1800, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_marco_cognome`
--

CREATE TABLE `dipendenti_marco_cognome` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_marco_santini`
--

CREATE TABLE `dipendenti_marco_santini` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `agente` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_marco_santini`
--

INSERT INTO `dipendenti_marco_santini` (`id`, `nome`, `cognome`, `indirizzo`, `telefono`, `agente`) VALUES
(1, 'Marco', 'Santini', 'Clemente', '28028', 123),
(2, 'Diego', 'ArmandoMaradona', 'Novellara', '345123', 99);

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_matteo_vecchi`
--

CREATE TABLE `dipendenti_matteo_vecchi` (
  `id` int(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `posizione_lavorativa` text NOT NULL,
  `data_assunzione` date NOT NULL,
  `stipendio` double NOT NULL,
  `matricola` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_matteo_vecchi`
--

INSERT INTO `dipendenti_matteo_vecchi` (`id`, `nome`, `cognome`, `posizione_lavorativa`, `data_assunzione`, `stipendio`, `matricola`) VALUES
(16, 'Matteo', 'Vecchi', 'Dipendente', '2000-01-01', 1500, '12345');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_mattia_catellani`
--

CREATE TABLE `dipendenti_mattia_catellani` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(1024) NOT NULL,
  `job` varchar(100) NOT NULL,
  `employment date` varchar(100) NOT NULL,
  `retribution` decimal(10,0) NOT NULL,
  `office` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_mattia_catellani`
--

INSERT INTO `dipendenti_mattia_catellani` (`id`, `name`, `surname`, `job`, `employment date`, `retribution`, `office`) VALUES
(1, 'Mattia', 'Catellani', 'Game designer', '09/25/2028', '1920', 'c42');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_mattia_scarpa`
--

CREATE TABLE `dipendenti_mattia_scarpa` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `cognome` text NOT NULL,
  `posizione` text NOT NULL,
  `data_assunzione` date NOT NULL,
  `stipendio` double NOT NULL,
  `data_di_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_mattia_scarpa`
--

INSERT INTO `dipendenti_mattia_scarpa` (`id`, `nome`, `cognome`, `posizione`, `data_assunzione`, `stipendio`, `data_di_nascita`) VALUES
(4, 'ciao', 'bella', 'capo', '2004-05-05', 3000, '1991-04-18'),
(5, 'ciao', 'client', 'boh', '2000-12-12', 300, '1980-10-07');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_paolo_landolfi`
--

CREATE TABLE `dipendenti_paolo_landolfi` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(1024) NOT NULL,
  `posizione_lavorativa` varchar(100) NOT NULL,
  `data_di_assunzione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_riccardo_marani`
--

CREATE TABLE `dipendenti_riccardo_marani` (
  `id_dipendente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `indirizzo` varchar(100) NOT NULL,
  `posizione_lavorativa` varchar(100) NOT NULL,
  `data_assunzione` date NOT NULL,
  `data_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_riccardo_marani`
--

INSERT INTO `dipendenti_riccardo_marani` (`id_dipendente`, `nome`, `cognome`, `indirizzo`, `posizione_lavorativa`, `data_assunzione`, `data_nascita`) VALUES
(1, 'riccardo', 'marani', 'viadallep', 'dipendente', '2000-12-22', '1980-12-22');

-- --------------------------------------------------------

--
-- Struttura della tabella `dipendenti_sami_hamil`
--

CREATE TABLE `dipendenti_sami_hamil` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` bigint(10) NOT NULL,
  `posizione lavorativa` varchar(100) NOT NULL,
  `data di assunzione` date NOT NULL,
  `data_di_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `dipendenti_sami_hamil`
--

INSERT INTO `dipendenti_sami_hamil` (`id`, `nome`, `cognome`, `indirizzo`, `telefono`, `posizione lavorativa`, `data di assunzione`, `data_di_nascita`) VALUES
(1, 'Harman', 'Singh', 'pippo', 216514815, 'manager', '2023-09-04', '2005-09-25');

-- --------------------------------------------------------

--
-- Struttura della tabella `tabProva`
--

CREATE TABLE `tabProva` (
  `interi` int(11) NOT NULL,
  `text` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tabProva`
--

INSERT INTO `tabProva` (`interi`, `text`, `name`) VALUES
(6, 'sono', 'manin <3'),
(7, 'prova', 'boh'),
(8, 'prova', 'boh'),
(104, 'Antonio', 'sbancatore'),
(105, 'hola', 'gringos'),
(106, 'mani', 'dimmi di più');

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro`
--

CREATE TABLE `zona_di_lavoro` (
  `id` int(11) NOT NULL,
  `nome_zona` varchar(45) DEFAULT NULL,
  `numero_clienti` int(11) DEFAULT NULL,
  `id_dipendente` int(11) NOT NULL,
  `numero_dipendenti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_boccadoro_erika`
--

CREATE TABLE `zona_di_lavoro_boccadoro_erika` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(20) DEFAULT NULL,
  `num_clienti` int(11) NOT NULL,
  `id_dipendente` int(11) DEFAULT NULL,
  `num_uffici` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_di_lavoro_boccadoro_erika`
--

INSERT INTO `zona_di_lavoro_boccadoro_erika` (`id_zona`, `nome_zona`, `num_clienti`, `id_dipendente`, `num_uffici`) VALUES
(1, 'help desk', 200, 5547, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_dario_foroni`
--

CREATE TABLE `zona_di_lavoro_dario_foroni` (
  `id_zona` int(255) NOT NULL,
  `nome_zona` varchar(30) NOT NULL,
  `numero_clienti` int(255) NOT NULL,
  `kfclienti` int(255) DEFAULT NULL,
  `sesso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_di_lavoro_dario_foroni`
--

INSERT INTO `zona_di_lavoro_dario_foroni` (`id_zona`, `nome_zona`, `numero_clienti`, `kfclienti`, `sesso`) VALUES
(2, 'scuola', 1000, NULL, 'F');

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_diego_piccinini`
--

CREATE TABLE `zona_di_lavoro_diego_piccinini` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `ore_lavoro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_jacopo_nazzaro`
--

CREATE TABLE `zona_di_lavoro_jacopo_nazzaro` (
  `id` int(11) NOT NULL,
  `nome_zona` varchar(45) NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `id_dipendente` int(11) DEFAULT NULL,
  `numero_dipendenti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_di_lavoro_jacopo_nazzaro`
--

INSERT INTO `zona_di_lavoro_jacopo_nazzaro` (`id`, `nome_zona`, `numero_clienti`, `id_dipendente`, `numero_dipendenti`) VALUES
(1, 'NE', 10, 1, 20),
(2, 'EUROPA', 1, NULL, 100000),
(8, 'NEW', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_landolfi_paolo`
--

CREATE TABLE `zona_di_lavoro_landolfi_paolo` (
  `nome_zona` varchar(30) NOT NULL,
  `numero_clienti` int(100) NOT NULL,
  `id_dipendente` int(100) NOT NULL,
  `numero_dipendenti` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_malaguti_leonardo`
--

CREATE TABLE `zona_di_lavoro_malaguti_leonardo` (
  `id` int(30) NOT NULL,
  `nome_zona` varchar(30) NOT NULL,
  `numero_clienti` int(30) NOT NULL,
  `id_dipendente` varchar(30) NOT NULL,
  `numero_dipenmdenti` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_di_lavoro_marani_riccardo`
--

CREATE TABLE `zona_di_lavoro_marani_riccardo` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` varchar(1024) NOT NULL,
  `id_dipendente` varchar(100) NOT NULL,
  `ore_di_lavoro_giornaliere` int(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_di_lavoro_marani_riccardo`
--

INSERT INTO `zona_di_lavoro_marani_riccardo` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendente`, `ore_di_lavoro_giornaliere`) VALUES
(1, 'correggio', '123', '1', 12),
(2, 'sammartino', '100', '2', 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `Zona_di_lavoro_ruozzi_riccardo`
--

CREATE TABLE `Zona_di_lavoro_ruozzi_riccardo` (
  `id` int(250) NOT NULL,
  `nome_zona` varchar(30) NOT NULL,
  `numero_clienti` int(30) NOT NULL,
  `id_dipendente` varchar(30) NOT NULL,
  `nome_gatto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Zona_di_lavoro_ruozzi_riccardo`
--

INSERT INTO `Zona_di_lavoro_ruozzi_riccardo` (`id`, `nome_zona`, `numero_clienti`, `id_dipendente`, `nome_gatto`) VALUES
(1, 'Riccardo', 1, 'ruozzi.riccardo', 'Fiona');

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_lavoro_marco_santini`
--

CREATE TABLE `zona_lavoro_marco_santini` (
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `regione_lavorativa` varchar(255) NOT NULL,
  `cap` int(255) NOT NULL,
  `indirizzo` varchar(1024) NOT NULL,
  `telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_lavoro_marco_santini`
--

INSERT INTO `zona_lavoro_marco_santini` (`nome`, `cognome`, `regione_lavorativa`, `cap`, `indirizzo`, `telefono`) VALUES
('Marco', '', '2', 22, 'ciao', '44'),
('marco', '', '2', 22, 'ciao', '44'),
('pipo', 'baudo', '2', 44022, 'gigi', '283927284');

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_lavoro_martucci_nicolo`
--

CREATE TABLE `zona_lavoro_martucci_nicolo` (
  `id` int(250) NOT NULL,
  `nome_zona` varchar(30) NOT NULL,
  `numero_clienti` int(250) NOT NULL,
  `id_dipendente` varchar(30) NOT NULL,
  `numero_dipendenti` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_lavoro_martucci_nicolo`
--

INSERT INTO `zona_lavoro_martucci_nicolo` (`id`, `nome_zona`, `numero_clienti`, `id_dipendente`, `numero_dipendenti`) VALUES
(2, 'uffici', 2, '105487', 45);

-- --------------------------------------------------------

--
-- Struttura della tabella `zona_lavoro_samuele_zaccarelli`
--

CREATE TABLE `zona_lavoro_samuele_zaccarelli` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `numero_dipendenti` int(11) NOT NULL,
  `id_dipendente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zona_lavoro_samuele_zaccarelli`
--

INSERT INTO `zona_lavoro_samuele_zaccarelli` (`id`, `nome`, `numero_clienti`, `numero_dipendenti`, `id_dipendente`) VALUES
(1, 'Ufficio DEV', 30, 20, 1),
(2, 'Scuola', 100, 1000, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro`
--

CREATE TABLE `zone_di_lavoro` (
  `id_zona autoincrement` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` int(255) NOT NULL,
  `id_dipendente` varchar(100) NOT NULL,
  `luogo_zona` varchar(2024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_dario_benzi`
--

CREATE TABLE `zone_di_lavoro_dario_benzi` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(40) NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `id_dipendenti` varchar(100) NOT NULL,
  `orario_apertura` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_dario_benzi`
--

INSERT INTO `zone_di_lavoro_dario_benzi` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendenti`, `orario_apertura`) VALUES
(1, 'reggio_emilia', 115, '1', '2023-10-03');

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_davide_verdino`
--

CREATE TABLE `zone_di_lavoro_davide_verdino` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` int(100) NOT NULL,
  `id_dipendente` varchar(100) NOT NULL,
  `orario_lavoro` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_davide_verdino`
--

INSERT INTO `zone_di_lavoro_davide_verdino` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendente`, `orario_lavoro`) VALUES
(1, 'contabilità', 30, '2c7d', '8:00-14:00 15:00-17:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_david_savin`
--

CREATE TABLE `zone_di_lavoro_david_savin` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` varchar(1024) NOT NULL,
  `id_dipendente` varchar(100) NOT NULL,
  `numero_pc` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_david_savin`
--

INSERT INTO `zone_di_lavoro_david_savin` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendente`, `numero_pc`) VALUES
(3452, 'E-commerce', '50', '34543', 27);

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_deiana_andrea_mario`
--

CREATE TABLE `zone_di_lavoro_deiana_andrea_mario` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` int(255) NOT NULL,
  `numero_clienti` varchar(100) NOT NULL,
  `id_dipendente` varchar(1024) NOT NULL,
  `orario_apertura` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_deiana_andrea_mario`
--

INSERT INTO `zone_di_lavoro_deiana_andrea_mario` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendente`, `orario_apertura`) VALUES
(1, 1, '100', '1', '10'),
(2, 2, '50', '2', '11');

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_federico_oliva`
--

CREATE TABLE `zone_di_lavoro_federico_oliva` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(20) NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `id_dipendenti` int(11) NOT NULL,
  `numero_posti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_francesco_balotta`
--

CREATE TABLE `zone_di_lavoro_francesco_balotta` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `num_clienti` int(11) NOT NULL,
  `id_dipendente` int(11) DEFAULT NULL,
  `num_uffici` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_francesco_ferriolo`
--

CREATE TABLE `zone_di_lavoro_francesco_ferriolo` (
  `id` int(11) NOT NULL,
  `nome_zona` varchar(255) DEFAULT NULL,
  `numero_clienti` int(11) DEFAULT NULL,
  `id_dipendenti` int(11) DEFAULT NULL,
  `articolo_venduto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_harman_singh`
--

CREATE TABLE `zone_di_lavoro_harman_singh` (
  `id_zona` int(10) NOT NULL,
  `nome_zona` varchar(20) NOT NULL,
  `numero_clienti` int(100) NOT NULL,
  `id_dipendente` varchar(10) NOT NULL,
  `reparto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_lorenzo_arfeli`
--

CREATE TABLE `zone_di_lavoro_lorenzo_arfeli` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` varchar(1024) NOT NULL,
  `id_dipendente` varchar(100) NOT NULL,
  `nome_caporeparto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_manuel_ghizzoni`
--

CREATE TABLE `zone_di_lavoro_manuel_ghizzoni` (
  `id` int(11) NOT NULL,
  `nome_zona` text NOT NULL,
  `numero_clienti` int(11) NOT NULL DEFAULT '0',
  `matricola_dipendente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_manuel_ghizzoni`
--

INSERT INTO `zone_di_lavoro_manuel_ghizzoni` (`id`, `nome_zona`, `numero_clienti`, `matricola_dipendente`) VALUES
(1, 'sede_centrale', 30, 33);

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_matteo_vecchi`
--

CREATE TABLE `zone_di_lavoro_matteo_vecchi` (
  `id` int(255) NOT NULL,
  `nome_zona` text NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `matricola_dipendente` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_matteo_vecchi`
--

INSERT INTO `zone_di_lavoro_matteo_vecchi` (`id`, `nome_zona`, `numero_clienti`, `matricola_dipendente`) VALUES
(4, 'Ufficio acquisti', 120, '12345');

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_mattia_scarpa`
--

CREATE TABLE `zone_di_lavoro_mattia_scarpa` (
  `id` int(11) NOT NULL,
  `nome_zona` text NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `id_responsabile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_mattia_scarpa`
--

INSERT INTO `zone_di_lavoro_mattia_scarpa` (`id`, `nome_zona`, `numero_clienti`, `id_responsabile`) VALUES
(1, 'prova', 20, 4),
(2, 'prova2', 30, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_sami_hamil`
--

CREATE TABLE `zone_di_lavoro_sami_hamil` (
  `id_zona` int(11) NOT NULL,
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` int(255) NOT NULL,
  `id_dipendenti` int(11) NOT NULL,
  `città` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_di_lavoro_sami_hamil`
--

INSERT INTO `zone_di_lavoro_sami_hamil` (`id_zona`, `nome_zona`, `numero_clienti`, `id_dipendenti`, `città`) VALUES
(1, '1215', 8554, 1, 'Reggiolo');

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_di_lavoro_tomaso_mannoni`
--

CREATE TABLE `zone_di_lavoro_tomaso_mannoni` (
  `nome_zona` varchar(100) NOT NULL,
  `numero_clienti` int(11) NOT NULL,
  `id_dipendente` int(11) NOT NULL,
  `numero_dipendenti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti_dario_foroni`
--
ALTER TABLE `clienti_dario_foroni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_diego_piccinini`
--
ALTER TABLE `clienti_diego_piccinini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_francesco_balotta`
--
ALTER TABLE `clienti_francesco_balotta`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_francesco_ferriolo`
--
ALTER TABLE `clienti_francesco_ferriolo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_leonardo_malaguti`
--
ALTER TABLE `clienti_leonardo_malaguti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_marco_santini`
--
ALTER TABLE `clienti_marco_santini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_martucci_nicolo`
--
ALTER TABLE `clienti_martucci_nicolo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_Ruozzi_Riccardo`
--
ALTER TABLE `clienti_Ruozzi_Riccardo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti_samuele_zaccarelli`
--
ALTER TABLE `clienti_samuele_zaccarelli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_dario_benzi`
--
ALTER TABLE `dipendenti_dario_benzi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_davide_verdino`
--
ALTER TABLE `dipendenti_davide_verdino`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_david_savin`
--
ALTER TABLE `dipendenti_david_savin`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_deiana_andrea_mario`
--
ALTER TABLE `dipendenti_deiana_andrea_mario`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_diego_piccinini`
--
ALTER TABLE `dipendenti_diego_piccinini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_erika_boccadoro`
--
ALTER TABLE `dipendenti_erika_boccadoro`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_federico_oliva`
--
ALTER TABLE `dipendenti_federico_oliva`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_harman_singh`
--
ALTER TABLE `dipendenti_harman_singh`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_jacopo_nazzaro`
--
ALTER TABLE `dipendenti_jacopo_nazzaro`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_lorenzo_arfeli`
--
ALTER TABLE `dipendenti_lorenzo_arfeli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_manuel_ghizzoni`
--
ALTER TABLE `dipendenti_manuel_ghizzoni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_marco_cognome`
--
ALTER TABLE `dipendenti_marco_cognome`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_marco_santini`
--
ALTER TABLE `dipendenti_marco_santini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_matteo_vecchi`
--
ALTER TABLE `dipendenti_matteo_vecchi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_mattia_catellani`
--
ALTER TABLE `dipendenti_mattia_catellani`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_mattia_scarpa`
--
ALTER TABLE `dipendenti_mattia_scarpa`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_paolo_landolfi`
--
ALTER TABLE `dipendenti_paolo_landolfi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `dipendenti_riccardo_marani`
--
ALTER TABLE `dipendenti_riccardo_marani`
  ADD PRIMARY KEY (`id_dipendente`);

--
-- Indici per le tabelle `dipendenti_sami_hamil`
--
ALTER TABLE `dipendenti_sami_hamil`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tabProva`
--
ALTER TABLE `tabProva`
  ADD PRIMARY KEY (`interi`);

--
-- Indici per le tabelle `zona_di_lavoro`
--
ALTER TABLE `zona_di_lavoro`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zona_di_lavoro_boccadoro_erika`
--
ALTER TABLE `zona_di_lavoro_boccadoro_erika`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zona_di_lavoro_dario_foroni`
--
ALTER TABLE `zona_di_lavoro_dario_foroni`
  ADD PRIMARY KEY (`id_zona`),
  ADD KEY `kfclienti` (`kfclienti`);

--
-- Indici per le tabelle `zona_di_lavoro_diego_piccinini`
--
ALTER TABLE `zona_di_lavoro_diego_piccinini`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zona_di_lavoro_jacopo_nazzaro`
--
ALTER TABLE `zona_di_lavoro_jacopo_nazzaro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dip_idx` (`id_dipendente`);

--
-- Indici per le tabelle `zona_di_lavoro_malaguti_leonardo`
--
ALTER TABLE `zona_di_lavoro_malaguti_leonardo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zona_di_lavoro_marani_riccardo`
--
ALTER TABLE `zona_di_lavoro_marani_riccardo`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `Zona_di_lavoro_ruozzi_riccardo`
--
ALTER TABLE `Zona_di_lavoro_ruozzi_riccardo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zona_lavoro_martucci_nicolo`
--
ALTER TABLE `zona_lavoro_martucci_nicolo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zona_lavoro_samuele_zaccarelli`
--
ALTER TABLE `zona_lavoro_samuele_zaccarelli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dipendente` (`id_dipendente`);

--
-- Indici per le tabelle `zone_di_lavoro`
--
ALTER TABLE `zone_di_lavoro`
  ADD PRIMARY KEY (`id_zona autoincrement`);

--
-- Indici per le tabelle `zone_di_lavoro_dario_benzi`
--
ALTER TABLE `zone_di_lavoro_dario_benzi`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_davide_verdino`
--
ALTER TABLE `zone_di_lavoro_davide_verdino`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_david_savin`
--
ALTER TABLE `zone_di_lavoro_david_savin`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_deiana_andrea_mario`
--
ALTER TABLE `zone_di_lavoro_deiana_andrea_mario`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_federico_oliva`
--
ALTER TABLE `zone_di_lavoro_federico_oliva`
  ADD PRIMARY KEY (`id_zona`),
  ADD KEY `id_dipendenti` (`id_dipendenti`);

--
-- Indici per le tabelle `zone_di_lavoro_francesco_balotta`
--
ALTER TABLE `zone_di_lavoro_francesco_balotta`
  ADD PRIMARY KEY (`id_zona`),
  ADD KEY `id_dipendente` (`id_dipendente`);

--
-- Indici per le tabelle `zone_di_lavoro_francesco_ferriolo`
--
ALTER TABLE `zone_di_lavoro_francesco_ferriolo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dipendenti` (`id_dipendenti`);

--
-- Indici per le tabelle `zone_di_lavoro_harman_singh`
--
ALTER TABLE `zone_di_lavoro_harman_singh`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_lorenzo_arfeli`
--
ALTER TABLE `zone_di_lavoro_lorenzo_arfeli`
  ADD PRIMARY KEY (`id_zona`);

--
-- Indici per le tabelle `zone_di_lavoro_manuel_ghizzoni`
--
ALTER TABLE `zone_di_lavoro_manuel_ghizzoni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zone_di_lavoro_matteo_vecchi`
--
ALTER TABLE `zone_di_lavoro_matteo_vecchi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zone_di_lavoro_mattia_scarpa`
--
ALTER TABLE `zone_di_lavoro_mattia_scarpa`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `zone_di_lavoro_sami_hamil`
--
ALTER TABLE `zone_di_lavoro_sami_hamil`
  ADD PRIMARY KEY (`id_zona`),
  ADD KEY `id_dipendenti` (`id_dipendenti`);

--
-- Indici per le tabelle `zone_di_lavoro_tomaso_mannoni`
--
ALTER TABLE `zone_di_lavoro_tomaso_mannoni`
  ADD PRIMARY KEY (`nome_zona`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti_dario_foroni`
--
ALTER TABLE `clienti_dario_foroni`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `clienti_diego_piccinini`
--
ALTER TABLE `clienti_diego_piccinini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `clienti_francesco_balotta`
--
ALTER TABLE `clienti_francesco_balotta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `clienti_francesco_ferriolo`
--
ALTER TABLE `clienti_francesco_ferriolo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `clienti_leonardo_malaguti`
--
ALTER TABLE `clienti_leonardo_malaguti`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `clienti_marco_santini`
--
ALTER TABLE `clienti_marco_santini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT per la tabella `clienti_martucci_nicolo`
--
ALTER TABLE `clienti_martucci_nicolo`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `clienti_Ruozzi_Riccardo`
--
ALTER TABLE `clienti_Ruozzi_Riccardo`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `clienti_samuele_zaccarelli`
--
ALTER TABLE `clienti_samuele_zaccarelli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `dipendenti_dario_benzi`
--
ALTER TABLE `dipendenti_dario_benzi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `dipendenti_davide_verdino`
--
ALTER TABLE `dipendenti_davide_verdino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `dipendenti_david_savin`
--
ALTER TABLE `dipendenti_david_savin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25092006;
--
-- AUTO_INCREMENT per la tabella `dipendenti_deiana_andrea_mario`
--
ALTER TABLE `dipendenti_deiana_andrea_mario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `dipendenti_diego_piccinini`
--
ALTER TABLE `dipendenti_diego_piccinini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `dipendenti_erika_boccadoro`
--
ALTER TABLE `dipendenti_erika_boccadoro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `dipendenti_federico_oliva`
--
ALTER TABLE `dipendenti_federico_oliva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `dipendenti_harman_singh`
--
ALTER TABLE `dipendenti_harman_singh`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `dipendenti_jacopo_nazzaro`
--
ALTER TABLE `dipendenti_jacopo_nazzaro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `dipendenti_lorenzo_arfeli`
--
ALTER TABLE `dipendenti_lorenzo_arfeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `dipendenti_manuel_ghizzoni`
--
ALTER TABLE `dipendenti_manuel_ghizzoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `dipendenti_marco_cognome`
--
ALTER TABLE `dipendenti_marco_cognome`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `dipendenti_marco_santini`
--
ALTER TABLE `dipendenti_marco_santini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `dipendenti_matteo_vecchi`
--
ALTER TABLE `dipendenti_matteo_vecchi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT per la tabella `dipendenti_mattia_catellani`
--
ALTER TABLE `dipendenti_mattia_catellani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `dipendenti_mattia_scarpa`
--
ALTER TABLE `dipendenti_mattia_scarpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `dipendenti_paolo_landolfi`
--
ALTER TABLE `dipendenti_paolo_landolfi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `dipendenti_riccardo_marani`
--
ALTER TABLE `dipendenti_riccardo_marani`
  MODIFY `id_dipendente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `dipendenti_sami_hamil`
--
ALTER TABLE `dipendenti_sami_hamil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `tabProva`
--
ALTER TABLE `tabProva`
  MODIFY `interi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_boccadoro_erika`
--
ALTER TABLE `zona_di_lavoro_boccadoro_erika`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_dario_foroni`
--
ALTER TABLE `zona_di_lavoro_dario_foroni`
  MODIFY `id_zona` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_diego_piccinini`
--
ALTER TABLE `zona_di_lavoro_diego_piccinini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_jacopo_nazzaro`
--
ALTER TABLE `zona_di_lavoro_jacopo_nazzaro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_malaguti_leonardo`
--
ALTER TABLE `zona_di_lavoro_malaguti_leonardo`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zona_di_lavoro_marani_riccardo`
--
ALTER TABLE `zona_di_lavoro_marani_riccardo`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `Zona_di_lavoro_ruozzi_riccardo`
--
ALTER TABLE `Zona_di_lavoro_ruozzi_riccardo`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `zona_lavoro_martucci_nicolo`
--
ALTER TABLE `zona_lavoro_martucci_nicolo`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `zona_lavoro_samuele_zaccarelli`
--
ALTER TABLE `zona_lavoro_samuele_zaccarelli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro`
--
ALTER TABLE `zone_di_lavoro`
  MODIFY `id_zona autoincrement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_dario_benzi`
--
ALTER TABLE `zone_di_lavoro_dario_benzi`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_davide_verdino`
--
ALTER TABLE `zone_di_lavoro_davide_verdino`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_david_savin`
--
ALTER TABLE `zone_di_lavoro_david_savin`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3453;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_deiana_andrea_mario`
--
ALTER TABLE `zone_di_lavoro_deiana_andrea_mario`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_federico_oliva`
--
ALTER TABLE `zone_di_lavoro_federico_oliva`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_francesco_balotta`
--
ALTER TABLE `zone_di_lavoro_francesco_balotta`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_francesco_ferriolo`
--
ALTER TABLE `zone_di_lavoro_francesco_ferriolo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_harman_singh`
--
ALTER TABLE `zone_di_lavoro_harman_singh`
  MODIFY `id_zona` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_lorenzo_arfeli`
--
ALTER TABLE `zone_di_lavoro_lorenzo_arfeli`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_manuel_ghizzoni`
--
ALTER TABLE `zone_di_lavoro_manuel_ghizzoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_matteo_vecchi`
--
ALTER TABLE `zone_di_lavoro_matteo_vecchi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_mattia_scarpa`
--
ALTER TABLE `zone_di_lavoro_mattia_scarpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `zone_di_lavoro_sami_hamil`
--
ALTER TABLE `zone_di_lavoro_sami_hamil`
  MODIFY `id_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `zona_di_lavoro_dario_foroni`
--
ALTER TABLE `zona_di_lavoro_dario_foroni`
  ADD CONSTRAINT `zona_di_lavoro_dario_foroni_ibfk_1` FOREIGN KEY (`kfclienti`) REFERENCES `clienti_dario_foroni` (`id`);

--
-- Limiti per la tabella `zona_di_lavoro_jacopo_nazzaro`
--
ALTER TABLE `zona_di_lavoro_jacopo_nazzaro`
  ADD CONSTRAINT `id_dip_fk` FOREIGN KEY (`id_dipendente`) REFERENCES `dipendenti_jacopo_nazzaro` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limiti per la tabella `zona_lavoro_samuele_zaccarelli`
--
ALTER TABLE `zona_lavoro_samuele_zaccarelli`
  ADD CONSTRAINT `zona_lavoro_samuele_zaccarelli_ibfk_1` FOREIGN KEY (`id_dipendente`) REFERENCES `clienti_samuele_zaccarelli` (`id`);

--
-- Limiti per la tabella `zone_di_lavoro_federico_oliva`
--
ALTER TABLE `zone_di_lavoro_federico_oliva`
  ADD CONSTRAINT `zone_di_lavoro_federico_oliva_ibfk_1` FOREIGN KEY (`id_dipendenti`) REFERENCES `dipendenti_federico_oliva` (`id`);

--
-- Limiti per la tabella `zone_di_lavoro_francesco_balotta`
--
ALTER TABLE `zone_di_lavoro_francesco_balotta`
  ADD CONSTRAINT `zone_di_lavoro_francesco_balotta_ibfk_1` FOREIGN KEY (`id_dipendente`) REFERENCES `clienti_francesco_balotta` (`id`);

--
-- Limiti per la tabella `zone_di_lavoro_francesco_ferriolo`
--
ALTER TABLE `zone_di_lavoro_francesco_ferriolo`
  ADD CONSTRAINT `zone_di_lavoro_francesco_ferriolo_ibfk_1` FOREIGN KEY (`id_dipendenti`) REFERENCES `clienti_francesco_ferriolo` (`id`);

--
-- Limiti per la tabella `zone_di_lavoro_sami_hamil`
--
ALTER TABLE `zone_di_lavoro_sami_hamil`
  ADD CONSTRAINT `zone_di_lavoro_sami_hamil_ibfk_1` FOREIGN KEY (`id_dipendenti`) REFERENCES `dipendenti_sami_hamil` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
