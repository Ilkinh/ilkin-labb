-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 12:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ilkinkursisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `basliqlar`
--

CREATE TABLE `basliqlar` (
  `A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `infobasliqlari`
--

CREATE TABLE `infobasliqlari` (
  `BasliqID` int(11) NOT NULL,
  `Ad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infobasliqlari`
--

INSERT INTO `infobasliqlari` (`BasliqID`, `Ad`) VALUES
(1, 'Hosting nədir?'),
(2, 'Hostingin istifadə məqsədi nədir?'),
(3, 'Hosting necə seçilir?'),
(4, 'Nameserver(ad serveri) nədir?'),
(5, 'DNS nədir?');

-- --------------------------------------------------------

--
-- Table structure for table `infomezmun`
--

CREATE TABLE `infomezmun` (
  `InfoID` int(11) NOT NULL,
  `Mezmun` text NOT NULL,
  `BasliqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infomezmun`
--

INSERT INTO `infomezmun` (`InfoID`, `Mezmun`, `BasliqID`) VALUES
(1, 'Saytınızın işləməsi üçün serverlərdə sizin üçün ayrılmış sahəyə hosting deyilir. Hostinq xidməti, server adlandırdığımız və kompüterlərdən daha güclü olan maşınlar vasitəsilə təmin edilir. Serverlər daim açıq və gecə-gündüz işlək vəziyyətdə olurlar.\r\n\r\nHətta gecə saat 04:00-da kompüterinizdən texno.blog saytına daxil olduğunuz zaman sayt açılırsa, bu, kompüterinizin serverimizə qoşulması və saytımıza aid faylları kompüterinizin ekranına köçürməsi deməkdir. Bunun üçün də serverlər daim açıq və internetə qoşulu olmalıdır.', 1),
(2, 'Veb sayt sahibləri veb saytlarının hər zaman əlçatan olmasını istəyirlərsə, ilk növbədə hostinq xidmətindən yararlanmalıdırlar. Misal üçün; İnternetdə satılan bütün e-ticarət platformaları, blog səhifəsi sahibləri və ya forum saytları hostinq dəstəyinə malikdir.\r\n\r\nHostinq xidmətinə bir çox funksiyalar daxildir. Səhifənin sürətli yüklənməsi, səhifədəki məzmunun kopyalanmaması və müxtəlif təhlükəsizlik tədbirlərini bu hostinq xidmətlərinin üstünlükləri sırasında saymaq olar. Keyfiyyətli hostinq xidmətindən faydalanmaq həm də sistemdə məlumat itkisinin qarşısını alacaq və təhlükəsiz platformada xidmət göstərməyə imkan verəcək.', 2),
(3, 'Hostinq xidməti adətən illik təklif olunur, bəzi paketlər isə aylıq təklif olunur. Hostinq alarkən nəzərə alınmalı olan ilk şey düşündüyünüz şirkətin etibarlılığıdır. Əgər hər hansı bir şirkəti araşdırarkən oxşar səviyyəli müxtəlif şirkətlərin təklif etdiyi hostinq xidmətindən fərqli qiymətlə qarşılaşsanız, bu o deməkdir ki, xidmət müddətinin sonuna qədər həmin xidmətdən istifadə edə bilməyəcəksiniz. Bir Hosting seçərkən təklif olunan müxtəlif hosting xidmətlərini nəzərə almaq vacibdir. Saytınızı harada yerləşdirmək istədiyinizi müəyyən edərkən nəzərə alınmalı olan bir neçə məqam var.\r\n\r\nNə tip bir veb sayt qurursunuz? e-ticarət, blog, portfolio,xəbər və s.\r\n\r\nVeb sayt növünə əsasən, saytınızı idarə etmək üçün lazım olan bant genişliyi nədir.\r\n\r\nDomeniniz üçün e-poçt ünvanları yarada bilərsinizmi?\r\n\r\nHansı növ hostinq seçimləri mövcuddur?\r\n\r\nSSL Sertifikatlar təqdim edirlərmi?\r\n\r\nHostinq provayderini seçdikdən sonra domen qeydiyyatınızı tamamlamaq asandır! Çox vaxt veb hostinq və domen xidməti göstərən şirkət eyni ola bilir.', 3),
(4, 'Ad serveri internetdə domen adının müxtəlif xidmətlərinin yeri ilə bağlı sorğuların idarə edilməsində ixtisaslaşmış serverdir.\r\n\r\nAd serverləri Domen Adı Sisteminin (DNS) əsas hissəsidir. Onlar IP ünvanları əvəzinə domenlərdən istifadə etməyə imkan verir. Bu, dostunuzla telefonla əlaqə saxlamağa bənzəyir: zəng etməzdən əvvəl onun telefon nömrəsini axtarın və ya hər dəfə nömrələri daxil etməmək üçün onu yazın.\r\n\r\nAsan sözlə, ad serverləri domeninizin cari DNS provayderini müəyyən edir. Əksər domen adı qeydiyyatçıları standart DNS xidmətini təmin edir. FreeDNS xidməti də var. FreeDNS, domen qeydiyyatçılarına domen qeydiyyatı ilə DNS hostinqini daxil etməyən insanlara kömək etmək üçün təqdim edilən DNS hosting xidmətidir .\r\n\r\nNamecheap ilə siz ya FreeDNS ( daha çox öyrənə bilərsiniz ) və ya domen qeydiyyatı və hostinq xidmətləri ilə təmin edilən DNS-dən istifadə edə bilərsiniz .\r\n\r\nBizdən domen aldıqda, aşağıdakı ad serverləri standart olaraq təmin edilir:\r\n\r\ndns1.registrar-servers.com\r\ndns2.registrar-servers.com', 4),
(5, 'Domain Name System (DNS) İnternetin telefon kitabçasıdır. İnsanlar nytimes.com və ya espn.com kimi domen adları vasitəsilə onlayn məlumat əldə edirlər . Veb brauzerləri İnternet Protokolu (IP) ünvanları vasitəsilə qarşılıqlı əlaqə qurur. DNS domen adlarını IP ünvanlarına çevirir ki, brauzerlər internet resurslarını yükləyə bilsinlər.\r\n\r\nİnternetə qoşulmuş hər bir cihazın digər maşınların cihazı tapmaq üçün istifadə etdiyi unikal IP ünvanı var. DNS serverləri insanların 192.168.1.1 (IPv4-də) kimi IP ünvanlarını və ya 2400:cb00:2048:1::c629:d7a2 (IPv6-da) kimi daha mürəkkəb yeni alfanümerik IP ünvanlarını yadda saxlamaq ehtiyacını aradan qaldırır.', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infobasliqlari`
--
ALTER TABLE `infobasliqlari`
  ADD PRIMARY KEY (`BasliqID`);

--
-- Indexes for table `infomezmun`
--
ALTER TABLE `infomezmun`
  ADD PRIMARY KEY (`InfoID`),
  ADD KEY `BasliqID` (`BasliqID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `infomezmun`
--
ALTER TABLE `infomezmun`
  MODIFY `InfoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `infomezmun`
--
ALTER TABLE `infomezmun`
  ADD CONSTRAINT `infomezmun_ibfk_1` FOREIGN KEY (`BasliqID`) REFERENCES `infobasliqlari` (`BasliqID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
