-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2020 at 03:51 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anotherl_test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `breed` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `breed`, `description`, `img`, `date_create`) VALUES
(1, 10, 'Intradisk ', 'Bulldog', 'Cillum eu culpa proident veniam culpa commodo eu ad tempor nostrud pariatur ullamco Lorem consequat. Labore eiusmod incididunt occaecat mollit duis est sit excepteur. Sunt exercitation labore aute minim.', 'https://via.placeholder.com/400/910/fff/?text=Intradisk ', '2020-05-25 12:35:29'),
(2, 3, 'Plexia ', 'Bulldog', 'Cillum exercitation ad ipsum adipisicing consequat. Eu proident minim deserunt do veniam aliqua in adipisicing in incididunt ex eiusmod cupidatat adipisicing. Est irure commodo Lorem incididunt eiusmod enim sunt sint voluptate.', 'https://via.placeholder.com/400/785/fff/?text=Plexia ', '2020-05-05 09:11:31'),
(3, 1, 'Affluex ', 'Cane corso', 'Excepteur incididunt cillum eiusmod eiusmod adipisicing nisi laboris eu consectetur tempor. Incididunt veniam deserunt deserunt eu cupidatat est nisi velit consequat. Elit duis officia aute duis velit.', 'https://via.placeholder.com/400/727/fff/?text=Affluex ', '2020-05-21 08:30:22'),
(4, 4, 'Assistia ', 'Bichon frise', 'Dolor culpa Lorem cupidatat ex commodo proident aliqua tempor non culpa pariatur cillum. Nostrud id deserunt eu qui mollit commodo est dolore sint. Ea commodo officia in dolor qui ex id velit voluptate sit cillum consectetur et deserunt.', 'https://via.placeholder.com/400/760/fff/?text=Assistia ', '2020-08-30 02:20:16'),
(5, 10, 'Ecratic ', 'Shiba Inu', 'Pariatur officia consectetur tempor voluptate sunt dolor aute ut cupidatat eiusmod culpa sint. Deserunt ex cillum laborum duis cupidatat cillum eiusmod. Proident laborum ex duis proident aute qui aliqua et ullamco cillum non et cillum labore.', 'https://via.placeholder.com/400/824/fff/?text=:cratic ', '2020-09-25 10:23:26'),
(6, 10, 'Marvane ', 'Bichon frise', 'Nulla ex fugiat eiusmod ullamco aliquip veniam duis ut eu eiusmod enim aliqua eu do. In consectetur ullamco et velit consequat anim ipsum pariatur. Nisi eu incididunt in magna amet non non aliquip est esse ad elit.', 'https://via.placeholder.com/400/845/fff/?text=Marvane ', '2020-04-03 10:32:25'),
(7, 2, 'Visualix ', 'Cane corso', 'Do anim excepteur mollit et cupidatat. Qui occaecat adipisicing sunt consequat magna. Ex dolore incididunt aliquip qui nisi duis anim laboris excepteur excepteur anim nulla pariatur.', 'https://via.placeholder.com/400/816/fff/?text=Visualix ', '2020-05-30 11:50:36'),
(8, 1, 'Bedlam ', 'Bichon frise', 'Est ex fugiat nisi ipsum fugiat pariatur non. Aliqua irure fugiat cillum commodo. Labore incididunt qui ea nisi Lorem eu.', 'https://via.placeholder.com/400/728/fff/?text=Bedlam ', '2020-06-09 12:20:35'),
(9, 3, 'Dognost ', 'Shiba Inu', 'Esse fugiat ea nostrud id veniam commodo anim adipisicing non commodo. Ipsum sunt fugiat et sint. Consequat eiusmod nostrud labore enim cupidatat elit eu consectetur cillum cupidatat consectetur ex.', 'https://via.placeholder.com/400/821/fff/?text=Dognost ', '2020-07-15 02:52:08'),
(10, 3, 'Zedalis ', 'Cavalier-King-Charles-Spaniel', 'Et sint et consequat esse culpa dolor elit sunt dolore sunt sint. Aute esse nulla labore aliqua excepteur qui elit culpa labore nostrud. Labore labore officia voluptate consequat sint enim incididunt duis.', 'https;//via.placeholder.com/400/947/fff/?text=Zedalis ', '2020-08-30 09:32:15'),
(11, 8, 'Junipoor ', 'Shiba Inu', 'Do officia dolore consectetur cupidatat duis ex est irure amet laborum sunt quis deserunt. Exercitation velit ut qui ea. Exercitation incididunt tempor cillum tempor.', 'https;//via.placeholder.com/400/904/fff/?text=Junipoor ', '2020-04-12 10:18:22'),
(12, 7, 'Biotica ', 'Russell-Terrier', 'Enim amet tempor sint esse consequat ad minim sunt minim ea fugiat. Voluptate et laborum officia duis do ipsum irure et consequat consectetur amet cillum veniam quis. Duis eu cupidatat ipsum sit proident velit eu non commodo.', 'https://via.placeholder.com/400/826/fff/?text=Biotica ', '2020-06-12 03:14:02'),
(13, 2, 'Zytrex ', 'Cane corso', 'Consectetur exercitation irure dolore culpa minim enim eiusmod cupidatat consequat. Ut veniam duis est ullamco magna excepteur do ad. Pariatur ut nulla consequat in proident labore laboris excepteur fugiat.', 'https;//via.placeholder.com/400/998/fff/?text=Zytrex ', '2020-07-01 12:01:31'),
(14, 8, 'Candecor ', 'Russell-Terrier', 'Sunt cillum labore occaecat irure veniam voluptate ea occaecat do nisi Lorem duis do laborum. Labore laboris ut labore dolor magna culpa commodo ex enim aliquip. Aliqua cillum enim eiusmod qui commodo ad in excepteur Lorem.', 'https;//via.placeholder.com/400/877/fff/?text=Candecor ', '2020-10-09 07:33:57'),
(15, 1, 'Zilidium ', 'Cane corso', 'Labore cillum et veniam ut quis deserunt consequat non incididunt. Occaecat ut eu ipsum velit magna ut eu deserunt velit est est amet ad do. Dolor ex pariatur pariatur duis sunt exercitation eu pariatur exercitation veniam.', 'https;//via.placeholder.com/400/940/fff/?text=Zilidium ', '2020-08-16 02:38:12'),
(16, 2, 'Geekmosis ', 'Bulldog', 'Sint in in in enim aute laborum proident sit amet duis mollit. Ullamco est ut incididunt ut dolor. Laborum pariatur occaecat aliqua nulla ipsum.', 'https;//via.placeholder.com/400/906/fff/?text=Geekmosis ', '2020-05-05 10:25:13'),
(17, 6, 'Electonic ', 'Cavalier-King-Charles-Spaniel', 'Mollit nisi incididunt dolor do ut proident qui amet. Aliqua velit esse amet duis culpa fugiat et tempor laboris ipsum in sint irure ea. Ut ipsum laborum consectetur ad aute nisi deserunt qui do et qui.', 'https;//via.placeholder.com/400/882/fff/?text=Electonic ', '2020-08-15 06:13:15'),
(18, 10, 'Poochies ', 'Dalmation', 'Commodo mollit consectetur eiusmod esse esse et. Ut est non ut do eiusmod nisi ipsum voluptate nisi elit tempor ea. Veniam velit ipsum eiusmod aliquip ullamco in dolor dolore et amet culpa ad eu.', 'https://via.placeholder.com/400/745/fff/?text=Poochies ', '2020-06-29 04:39:41'),
(19, 4, 'Bullzone ', 'Dalmation', 'Do pariatur commodo minim reprehenderit minim consequat laboris esse ad nostrud ullamco veniam. Laboris est ea Lorem irure est officia exercitation sint duis non cillum tempor ut esse. Et labore nisi aliquip excepteur commodo duis in ex eu.', 'https://via.placeholder.com/400/806/fff/?text=Bullzone ', '2020-07-17 11:56:32'),
(20, 8, 'Suretech ', 'Cavalier-King-Charles-Spaniel', 'Occaecat culpa in do occaecat ad aute do ipsum. Sint minim velit anim eiusmod eiusmod aliqua non. Lorem velit et non sit nisi do amet ipsum non commodo amet et.', 'https://via.placeholder.com/400/843/fff/?text=Suretech ', '2020-08-10 06:41:27'),
(21, 8, 'Paprikut ', 'Russell-Terrier', 'Magna consequat ullamco ut sit tempor. Fugiat pariatur tempor commodo aliqua. Aute laboris ea qui sunt aute culpa anim aliquip dolor.', 'https://via.placeholder.com/400/743/fff/?text=Paprikut ', '2020-09-07 02:57:54'),
(22, 10, 'Singavera ', 'Bulldog', 'Ipsum et fugiat labore deserunt incididunt pariatur nostrud ipsum sint. Do enim voluptate sint qui amet qui adipisicing culpa duis fugiat minim. Ullamco commodo laboris duis ipsum sint ea cupidatat reprehenderit reprehenderit veniam culpa enim labore excepteur.', 'https;//via.placeholder.com/400/964/fff/?text=Singavera ', '2020-03-24 07:47:41'),
(23, 2, 'Sybixtex ', 'Bulldog', 'Ut dolore eiusmod irure id veniam consequat enim deserunt eu adipisicing incididunt excepteur. Exercitation ea dolor laboris sint aliquip sunt nulla eu ad eu. Sint ipsum laboris veniam excepteur cillum duis exercitation amet commodo.', 'https;//via.placeholder.com/400/992/fff/?text=Sybixtex ', '2020-07-15 07:09:07'),
(24, 1, 'Vantage ', 'Cane corso', 'Sunt ea laboris ea id voluptate tempor exercitation magna do commodo pariatur. Excepteur non adipisicing enim amet cillum consectetur. Deserunt incididunt aliqua eu ea nulla mollit eu est ullamco.', 'https;//via.placeholder.com/400/971/fff/?text=Vantage ', '2020-01-07 06:58:51'),
(25, 6, 'Adornica ', 'Bichon frise', 'Ut reprehenderit sint dolore eiusmod quis. Non labore commodo dolor tempor est in in velit ea. Veniam anim sit eu ipsum anim aliquip.', 'https;//via.placeholder.com/400/903/fff/?text=Adornica ', '2020-07-06 05:44:19'),
(26, 2, 'Flumbo ', 'Shiba Inu', 'Consectetur fugiat eiusmod nostrud Lorem adipisicing cillum incididunt. Culpa occaecat aliquip duis eu ad. Aliqua nisi excepteur id sint culpa minim.', 'https://via.placeholder.com/400/846/fff/?text=Flumbo ', '2020-02-23 08:43:44'),
(27, 8, 'Ohmnet ', 'Dalmation', 'Est sunt proident laboris esse aliquip officia deserunt est. Est veniam dolore in dolor aliquip ex amet aliquip irure velit do. Velit occaecat anim non qui.', 'https;//via.placeholder.com/400/923/fff/?text=Ohmnet ', '2020-04-03 09:18:16'),
(28, 7, 'Accusage ', 'Russell-Terrier', 'Laboris et ex irure nostrud exercitation deserunt irure ex aute eu ullamco. Reprehenderit tempor anim sint amet pariatur. Ad cupidatat duis quis in nostrud deserunt voluptate incididunt ut.', 'https://via.placeholder.com/400/720/fff/?text=Accusage ', '2020-07-13 11:02:38'),
(29, 4, 'Repetwire ', 'Bulldog', 'Duis laboris dolor ullamco nulla sunt sint reprehenderit nisi occaecat do reprehenderit labore cillum culpa. Nulla aliqua fugiat aute Lorem pariatur nostrud sunt ullamco ullamco ex proident nulla in consequat. Enim do eu exercitation in do esse sint consectetur proident fugiat.', 'https;//via.placeholder.com/400/938/fff/?text=Repetwire ', '2020-05-24 12:28:13'),
(30, 10, 'Mitroc ', 'Bulldog', 'Deserunt sunt amet enim cupidatat nostrud est minim reprehenderit ea sit est. Incididunt eiusmod reprehenderit laborum fugiat enim. Nisi excepteur eu occaecat qui sint occaecat eu eu minim aliqua sunt minim aliqua.', 'https://via.placeholder.com/400/785/fff/?text=Mitroc ', '2020-02-25 11:15:42'),
(31, 2, 'Deepends ', 'Bichon frise', 'Aliqua Lorem sit eiusmod nulla duis. Et duis aliqua magna adipisicing nostrud velit sunt commodo laborum nostrud nisi. Nisi tempor consequat consequat duis sunt dolore nulla occaecat consequat.', 'https;//via.placeholder.com/400/963/fff/?text=Deepends ', '2020-01-29 11:30:08'),
(32, 5, 'Bolax ', 'Russell-Terrier', 'Nulla non minim officia dolore nulla nostrud consequat deserunt duis. Lorem occaecat ea laborum nisi irure nisi sit laboris id reprehenderit quis Lorem. Sit tempor est et adipisicing ullamco.', 'https;//via.placeholder.com/400/907/fff/?text=Bolax ', '2020-04-01 08:11:28'),
(33, 8, 'Insource ', 'Dalmation', 'Ullamco exercitation qui culpa do qui amet commodo sunt et magna est in mollit. Enim aliquip minim do sunt cupidatat laboris qui aliqua velit ipsum est duis reprehenderit mollit. Pariatur elit veniam ut irure deserunt nulla voluptate irure quis non sint culpa magna reprehenderit.', 'https://via.placeholder.com/400/762/fff/?text=Insource ', '2020-10-14 03:15:04'),
(34, 7, 'Cogentry ', 'Cavalier-King-Charles-Spaniel', 'Irure laborum ex ut voluptate voluptate ex do elit laboris. Aliqua dolor ipsum laborum culpa in consectetur sunt id. Ea veniam elit do ex quis eu non aute.', 'https;//via.placeholder.com/400/972/fff/?text=Cogentry ', '2020-02-15 10:46:30'),
(35, 6, 'Straloy ', 'Bulldog', 'Consequat elit eiusmod aute do nostrud dolor sunt officia non. Sunt consectetur deserunt ipsum esse ad elit nisi adipisicing veniam non. Do adipisicing tempor pariatur ullamco ea anim et exercitation consectetur nulla nisi velit in.', 'https;//via.placeholder.com/400/972/fff/?text=Straloy ', '2020-09-29 10:22:02'),
(36, 3, 'Solgan ', 'Cane corso', 'Ipsum id nulla labore ea nisi sunt qui dolor fugiat quis proident irure nisi. Proident consectetur aute veniam quis duis anim cillum non deserunt et officia. Tempor sint consequat mollit Lorem voluptate proident.', 'https://via.placeholder.com/400/839/fff/?text=Solgan ', '2020-03-15 10:42:06'),
(37, 1, 'Barkarama ', 'Dalmation', 'Qui occaecat pariatur laboris sunt aliqua aliquip in sint. Qui ad mollit excepteur fugiat culpa pariatur amet et deserunt. Est esse consequat aliquip laboris do nisi et non qui magna consequat.', 'https://via.placeholder.com/400/839/fff/?text=Barkarama ', '2020-03-20 09:10:25'),
(38, 4, 'Edecine ', 'Cane corso', 'Nisi do commodo fugiat commodo incididunt voluptate dolor nulla officia occaecat qui. Lorem velit irure proident non do anim nulla Lorem sint culpa fugiat deserunt labore. Ipsum enim consequat aliqua voluptate occaecat cupidatat.', 'https;//via.placeholder.com/400/901/fff/?text=Edecine ', '2020-01-19 11:21:09'),
(39, 2, 'Isotrack ', 'Shiba Inu', 'Exercitation anim commodo consequat velit cupidatat ad pariatur dolor. Duis aliqua exercitation sunt tempor dolore. Adipisicing ea et sint enim aliqua velit nisi.', 'https://via.placeholder.com/400/871/fff/?text=Isotrack ', '2020-07-15 09:52:24'),
(40, 1, 'Acrodance ', 'Bulldog', 'Consequat tempor ad anim do. Elit ipsum consequat adipisicing eu commodo esse laboris ex sint quis ad anim aliquip. Commodo quis occaecat occaecat fugiat Lorem.', 'https://via.placeholder.com/400/708/fff/?text=Acrodance ', '2020-02-03 08:08:11'),
(41, 7, 'Vurbo ', 'Dalmation', 'Officia voluptate ex aliquip fugiat. Lorem excepteur mollit nostrud nisi esse culpa. Adipisicing adipisicing velit irure duis quis sunt laboris ut cillum sunt nisi ad.', 'https://via.placeholder.com/400/785/fff/?text=Vurbo ', '2020-01-17 10:19:17'),
(42, 5, 'Boilicon ', 'Cane corso', 'Nisi do anim ullamco elit exercitation. Sunt ea do laborum sunt reprehenderit veniam ut sit cupidatat aute. Dolor laboris reprehenderit et elit ea cupidatat consequat ullamco et ullamco dolore anim.', 'https;//via.placeholder.com/400/980/fff/?text=Boilicon ', '2020-02-10 09:25:44'),
(43, 8, 'Octocore ', 'Bulldog', 'Amet cillum consectetur voluptate voluptate culpa eiusmod veniam ullamco exercitation tempor commodo officia. Sunt dolore nulla pariatur cillum id adipisicing. Proident irure sint reprehenderit culpa pariatur.', 'https://via.placeholder.com/400/822/fff/?text=Octocore ', '2020-05-10 02:08:16'),
(44, 9, 'Nebulean ', 'Dalmation', 'Minim voluptate Lorem reprehenderit consectetur velit reprehenderit incididunt aute incididunt nisi officia. Consectetur ad consequat aliqua do consequat ipsum non proident quis velit. Laborum Lorem minim sit eiusmod ad eiusmod.', 'https;//via.placeholder.com/400/962/fff/?text=Nebulean ', '2020-01-23 09:09:09'),
(45, 9, 'Norali ', 'Bichon frise', 'Elit eiusmod occaecat reprehenderit in. Do ullamco proident Lorem non culpa non minim amet sint tempor et. Tempor magna cillum exercitation excepteur ullamco exercitation ullamco.', 'https://via.placeholder.com/400/772/fff/?text=Norali ', '2020-03-26 09:42:06'),
(46, 5, 'Retrotex ', 'Cavalier-King-Charles-Spaniel', 'Proident eu irure tempor irure. Nisi nulla reprehenderit ullamco magna veniam enim cupidatat occaecat pariatur ex sit culpa deserunt amet. Nostrud ea sunt cupidatat sint enim fugiat voluptate quis Lorem.', 'https;//via.placeholder.com/400/892/fff/?text=Retrotex ', '2020-04-30 07:56:00'),
(47, 3, 'Callflex ', 'Bichon frise', 'Dolor velit cillum aliqua cillum magna quis consectetur voluptate. Excepteur laboris ea ea velit aliqua amet minim elit proident. Eu et ad do dolor enim nulla culpa culpa magna consectetur aliqua.', 'https://via.placeholder.com/400/854/fff/?text=Callflex ', '2020-10-08 03:21:23'),
(48, 4, 'Slambda ', 'Cavalier-King-Charles-Spaniel', 'Occaecat consequat minim in occaecat eu. Aute ex ipsum cillum cillum cillum aute labore et. Dolor magna in magna mollit officia nisi.', 'https://via.placeholder.com/400/834/fff/?text=Slambda ', '2020-06-01 07:16:28'),
(49, 8, 'Corporana ', 'Bulldog', 'Et amet nostrud eiusmod ex cillum reprehenderit eiusmod proident. Sit eiusmod adipisicing do anim esse. Quis eiusmod officia quis non elit quis ipsum.', 'https;//via.placeholder.com/400/973/fff/?text=Corporana ', '2020-09-11 02:29:30'),
(50, 6, 'Pharmacon ', 'Cane corso', 'Ea labore nostrud eiusmod do commodo cillum minim eiusmod sunt esse amet nostrud. Cupidatat in dolor ad dolor velit excepteur proident. Pariatur nostrud voluptate minim mollit ad amet pariatur.', 'https;//via.placeholder.com/400/955/fff/?text=Pharmacon ', '2020-02-25 12:52:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
