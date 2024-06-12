-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 07:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skillwave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `password`, `username`) VALUES
('', 'SkiilWave', 'SkillWave@gmail.com', '3c405426602431952335218535889333', 'Skill Wave'),
('0001', 'Rifcha Sya\'Bani Fatullah', 'rifchasyabani30@gmail.com', 'a407816d1a83a95e28ecdd00d295f232', 'Admin1');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `id_kategori`, `judul`, `isi`, `foto`) VALUES
(1, 5, 'Mengenal Kecerdasan Buatan: Masa Depan Teknologi yang Mengagumkan', 'Kecerdasan Buatan atau Artificial Intelligence (AI) adalah bidang ilmu komputer yang berfokus pada pembuatan sistem yang mampu meniru dan melampaui kemampuan manusia dalam melakukan tugas-tugas tertentu. Ini termasuk kemampuan untuk belajar dari pengalaman, memahami bahasa alami, mengenali pola, dan membuat keputusan. AI telah menjadi bagian integral dari kehidupan kita sehari-hari, dari asisten virtual seperti Siri dan Alexa hingga rekomendasi cerdas di platform streaming.\r\n\r\nJenis-Jenis Kecerdasan Buatan\r\n\r\n1. AI Lemah (Narrow AI): AI yang dirancang untuk melakukan tugas spesifik. Contohnya adalah sistem rekomendasi di e-commerce dan algoritma pencarian Google.\r\n2. AI Kuat (General AI): AI yang memiliki kemampuan untuk memahami, belajar, dan menerapkan pengetahuan dalam konteks yang berbeda, mirip dengan kecerdasan manusia. Ini masih dalam tahap penelitian dan pengembangan.\r\n3. Superintelligent AI: AI yang melampaui kecerdasan manusia di semua aspek. Ini adalah konsep teoretis dan masih jauh dari kenyataan saat ini.\r\n\r\nKesimpulan\r\nKecerdasan Buatan adalah bidang yang dinamis dan berkembang pesat dengan potensi besar untuk mengubah berbagai aspek kehidupan kita. Penting untuk terus mengawasi perkembangan terbaru dan mempertimbangkan implikasi etis dari teknologi ini. Dengan pendekatan yang tepat, AI bisa menjadi alat yang sangat berguna untuk kemajuan manusia.', 'ai.jpg'),
(2, 4, 'Panduan Lengkap Pengembangan Fullstack: Menjadi Ahli dalam Backend dan Frontend', 'Seorang pengembang fullstack adalah seorang profesional yang memiliki keterampilan dan pengetahuan dalam pengembangan web baik di sisi frontend maupun backend. Mereka mampu menangani berbagai aspek pengembangan aplikasi web, mulai dari antarmuka pengguna (UI) hingga manajemen database dan logika server. Kemampuan untuk bekerja di seluruh spektrum pengembangan ini membuat pengembang fullstack sangat berharga di industri teknologi.\r\n\r\n1. HTML dan CSS\r\nUntuk memulai karir Anda dalam pengembangan web, Anda harus memiliki pengetahuan dasar tentang HTML dan CSS. Mereka adalah blok bangunan dasar web yang memungkinkan Anda menambahkan konten dan gaya ke halaman web Anda. Jadi, mulailah perjalanan Anda menjadi full-stack developer dengan mendapatkan pemahaman yang baik tentang konsep front end ini.\r\n\r\n2. JavaScript\r\nFakta bahwa JavaScript dapat digunakan baik dalam pengembangan front-end dan back-end membuatnya sangat populer. Ini adalah salah satu teknologi terpanas di pasar di mana inovasi berkelanjutan berlangsung. Dengan alat dan kerangka kerja baru yang dirilis setiap tahun, seseorang membutuhkan pengetahuan yang baik di bidang ini. Pengetahuan tentang kerangka kerja JS seperti AngularJS dan ReactJS akan membantu seseorang untuk menulis kode panjang dengan mudah. Pemahaman yang kuat tentang jQuery akan menjadi keuntungan tambahan.\r\n\r\n3. Bahasa pemrograman backend\r\nSetelah mendapatkan pijakan yang kuat di arena front end, selanjutnya datang bahasa backend seperti Ruby, Python, PHP, dll. yang menangani logika aplikasi, otentikasi pengguna, dan operasi data. Mulailah dengan bahasa yang lebih mudah dipelajari. Apa pun bahasa yang Anda pilih, pastikan Anda benar-benar memahami nuansanya. Anda dapat mempelajari NodeJS yang didasarkan pada JavaScript yang telah Anda pelajari sebelum mencapai titik ini.', 'fullstack.jpg'),
(3, 2, 'Dasar Dasar Web', 'Web Programming atau Pemrograman Web merupakan istilah yang erat kaitannya dengan internet dan website. Memang benar, karena pemrograman web merupakan suatu proses pembuatan website untuk keperluan internet. Orang banyak mengenal web dengan istilah WWW atau World Wide Web.\r\nWorld Wide Web adalah halaman-halaman website yang terkoneksi satu dengan lainnya atau disebut juga dengan hyperlink yang membentuk samudera informasi yang berjalan dengan protokol HyperText Transfer Protocol (HTTP).\r\n\r\nDalam semua ilmu tentang pemrograman baik itu desktop, mobile, game maupun software atau aplikasi lainnya pasti selalu ada bahasa-bahasa pemrograman yang digunakan untuk membuat aplikasi tersebut yang berisi statement-statement, perintah, atau pun fungsi agar aplikasi yang dibuat sesuai dengan apa yang telah didesain oleh si programmer.\r\n\r\nHyperText Markup Language (HTML)\r\n\r\nHTML sebenarnya bukan sebuah bahasa pemrograman, melainkan markup language atau bahasa penandaan yang terdiri dari kumpulan tag. Pada dasarnya HTML hanya mendeskripsikan bahwa bagian tertentu dalam sebuah halaman web adalah isi yang harus ditampilkan oleh browser dengan cara tertentu. HTML merupakan standar internet yang didefinisikan dan dikendalikan oleh World Wide Web Consortium (W3C).\r\n\r\nCascading Style Sheet (CSS)\r\n\r\nCSS merupakan bahasa stylesheet yang digunakan untuk mengatur tampilan suatu dokumen yang ditulis dengan HTML. CSS juga memiliki css framework dan digunakan untuk menambah desain-desain tertentu pada halaman web agar desain halaman menarik untuk dilihat. Penggunaan CSS paling umum adalah untuk mengatur halaman web yang ditulis dengan HTML atau XHTML.\r\n\r\nHypertext Preprocessor (PHP)\r\n\r\nBahasa pemrograman PHP merupakan salah satu bahasa scripting yang wajib dikuasai oleh seorang web developer. Karena sifatnya yang server-side scripting, maka untuk menjalankan bahasa pemrograman PHP tidak bisa hanya memanggil file yang berekstensi PHP saja. Bahasa pemrograman PHP memerlukan sebuah web server untuk menjalankannya. PHP juga dapat diintegrasikan dengan HTML, JavaScript, jQuery, Ajax dan lain sebagainya. Akan tetapi pada umumnya bahasa pemrograman PHP digunakan bersamaan dengan file yang bertipe HTML agar file tersebut dapat menjalankan berbagai fungsi.\r\n\r\nJavaScript\r\n\r\nJavaScript adalah bahasa scripting yang berjalan pada sisi client. Maksudnya adalah pemrosesan script dilakukan sendiri pada komputer user. Biasanya JavaScript digunakan untuk membuat animasi-animasi dan bentuk interaktif lain pada halaman web. Terbukti dari banyaknya library-library JavaScript yang dapat digunakan oleh programmer untuk membuat halaman web yang dibuat menjadi lebih interaktif. Untuk menjalankan script yang ditulis dalam JavaScript, kita membutuhkan browser yang mendukung dan mampu menjalankan JavaScript atau sering disebut dengan javascript-enabled browser.\r\n\r\nStructured Query Language (SQL)\r\n\r\nSQL merupakan domain-spesific language yang digunakan untuk mengolah data dalam Relational Database Management System (RDBMS). Aplikasi RDBMS yang banyak digunakan oleh para programmer aplikasi web untuk mengolah basis data mereka adalah MySQL. Biasanya digunakan fungsi-fungsi dalam bahasa pemrograman PHP untuk membuat, membaca, mengubah atau pun menghapus data dalam SQL yang kemudian dapat ditampilkan pada halaman web.', 'web.jpg'),
(4, 3, 'Sejarah Aplikasi Mobile', '\r\nMasa Awal Aplikasi Mobile\r\n\r\nPada awalnya, aplikasi mobile hanyalah perangkat sederhana dengan fungsionalitas terbatas. Namun, perkembangan cepat dalam perangkat keras dan perangkat lunak membuka peluang baru. Aplikasi mobile awal biasanya terbatas pada pesan teks, jadwal, dan beberapa permainan sederhana.\r\n\r\nPerkembangan Platform\r\n\r\nKemunculan platform seperti iOS dan Android mengubah segalanya. Perkembangan sistem operasi yang kuat ini memberikan akses ke lingkungan pengembangan yang lebih baik, alat canggih, dan pasar yang luas untuk aplikasi.\r\n\r\nInovasi Desain dan Antarmuka Pengguna\r\n\r\nDesain antarmuka pengguna semakin dioptimalkan untuk memastikan pengalaman pengguna yang lebih baik. Aplikasi mobile modern menekankan kesederhanaan, kejelasan, dan interaktivitas untuk memikat dan mempertahankan pengguna.\r\n\r\nIntegrasi Teknologi Baru\r\n\r\nAplikasi mobile modern menggunakan teknologi seperti Augmented Reality (AR), Virtual Reality (VR), dan Internet of Things (IoT). Integrasi teknologi ini membuka peluang baru untuk pengalaman pengguna yang unik dan lebih interaktif.', 'apk.jpg'),
(5, 1, 'INFRASTRUKTUR & JARINGAN', 'Infrastruktur Fisik\r\n\r\nSuatu Infrastruktur Fisik, sesuai dengan namanya – fisik, maka akan banyak berhubungan dengan komponen fisik suatu jaringan (tentunya sesuai dengan design jaringan yang dibuat) seperti:\r\n\r\nYang berhubungan dengan masalah perkabelan jaringan, yaitu kabel jaringan yang sesuai dengan topology jaringan yang dipakai. Misal jika dalam jaringan anda memakai backbone Gigabit Ethernet maka sudah seharusnya anda memakai kabel CAT5e yang bisa mendukung speed Gigabit.\r\nSemua piranti jaringan seperti :\r\nRouter yang memungkinkan komunikasi antar jaringan lokal yang berbeda segmen.\r\nSwitches, Bridges, yang memungkinkan hosts terhubung ke jaringan.\r\nServer yang meliputi seperti Server Data File, Exchange Server, DHCP Server untuk layanan IP Address, DNS Server dan lain-2, dan juga hosts.\r\nInfrastruktur fisik bisa termasuk didalamnya Technology Ethernet dan Standard Wireless 802.11a/b/g/n, jaringan telepon umum (PSTN), Asynchronous Transfer Mode (ATM), dan semua metoda komunikasi dan jaringan fisiknya.\r\nInfrastruktur Logical\r\n\r\nInfrastruktur Logical dari suatu jaringan komputer bisa merupakan komposisi dari banyak elemen-elemen software yang menghubungkan, mengatur, dan mengamankan hosts pada jaringan. Infrastruktur logical ini memungkinkan terjadinya komunikasi antar komputer melewati jaringan fisik yang sesuai dengan topology jaringan. Sebagai contoh dari infrastruktur logical ini adalah komponen-komponen seperti :\r\n\r\n1. Domain Name System (DNS), yang merupakan system untuk memberikan resolusi name dari permintaan resolusi name dari clients.\r\n\r\n2. Directory Services, yang merupakan layanan directory untuk meng- otentikasi dan otorisasi user untuk masuk dan menggunakan resources jaringan.\r\nProtocol-protocol jaringan seperti Protocol TCP/IP, protocol jaringan yang sangat popular dan paling banyak dipakai sebagai protocol jaringan dari berbagai platform jaringan baik berplatform Windows, Linux, Unix dan lainnya.\r\n', 'jaringan.jpg'),
(6, 5, 'Menakar Prospek Pengaturan Artificial Intelligence di Indonesia', 'Artificial Intelligence (AI) atau kecerdasan buatan telah menjadi pembicaraan selama beberapa tahun terakhir. Apalagi setelah diluncurkannya sebuah chatbot berbasis AI yang mampu menjawab pertanyaan tertulis dan menghasilkan teks mirip buatan manusia. Perkembangan tersebut juga terjadi di berbagai platform berbasis AI. Teknologi ini membantu manusia dalam menyelesaikan pekerjaan mulai dari membuat presentasi, mengedit video atau musik, hingga meringkas teks yang panjang.\r\n\r\nPerkembangan tersebut memunculkan optimisme bahwa AI dapat berkembang lebih baik di era digital ini. Walaupun demikian, AI juga memiliki kelemahan-kelemahan tersendiri sama seperti perkembangan teknologi lainnya. Misalnya, penggunaan chatbot berbasis AI yang tidak bertanggung jawab dapat mengarah pada plagiarisme. Penggunaan suara dan video pada aplikasi berbasis AI pun dapat menghasilkan informasi yang menyesatkan (hoax). Kerugian akibat penggunaan AI yang tidak etis bisa begitu tidak terduga di masa depan. Oleh karena itu, regulasi yang kuat terhadap AI sangat penting.\r\n\r\nPemerintah Indonesia sejak tahun 2023 akhirnya memiliki ketentuan yang merespon perkembangan AI yang cepat. Isinya mengatur penggunaan kecerdasan buatan secara khusus denganSurat Edaran Nomor 9 Tahun 2023 tentang Etika Kecerdasan Artifisial. Edaran ini berfungsi sebagai pedoman untuk menggunakan kecerdasan buatan secara etis. Dokumen ini akan menjadi referensi bagi para pelaku usaha, terutama dalam menyusun kebijakan internal pemanfaatan AI.\r\n\r\n', 'ai2.jpg'),
(7, 6, 'Pengertian IOT', 'Istilah IoT, atau Internet of Things, mengacu pada jaringan kolektif perangkat yang terhubung dan teknologi yang memfasilitasi komunikasi antara perangkat dan cloud, serta antarperangkat itu sendiri. Berkat hadirnya cip komputer murah dan telekomunikasi bandwidth tinggi, kita sekarang memiliki miliaran perangkat yang terhubung ke internet. Ini berarti perangkat setiap hari seperti sikat gigi, penyedot debu, mobil, dan mesin dapat menggunakan sensor untuk mengumpulkan data dan merespons pengguna dengan cerdas.  \r\n\r\nInternet untuk Segala (IoT) mengintegrasikan “segala hal” setiap hari dengan internet. Rekayasawan Komputer telah menambahkan sensor dan prosesor ke benda sehari-hari sejak 90-an. Namun, kemajuan awalnya lambat karena cipnya besar dan memakan banyak tempat. Cip komputer berdaya rendah yang disebut tanda RFID pertama kali digunakan untuk melacak perlengkapan mahal. Karena menyusutnya ukuran perangkat komputer, cip ini juga semakin kecil, cepat, dan pintar dari waktu ke waktu.\r\n\r\nBiaya mengintegrasikan kekuatan komputasi ke dalam benda kecil sekarang jauh berkurang. Misalnya, Anda dapat menambahkan konektivitas dengan kemampuan layanan suara Alexa ke MCU dengan RAM tersemat kurang dari 1 MB, seperti sakelar lampu. Seluruh industri telah tumbuh dengan fokus memenuhi rumah, bisnis, dan kantor kita dengan perangkat IoT. Objek pintar ini dapat secara otomatis mengirimkan data ke dan dari internet. Semua “perangkat komputasi tidak terlihat” ini dan teknologi yang terkait dengannya secara bersama-sama disebut sebagai Internet untuk Segala (IoT).\r\n\r\nInternet untuk Segala (IoT) berdampak luas pada kehidupan dan pekerjaan manusia. IoT memungkinkan mesin untuk melakukan angkat berat, mengambil alih tugas yang membosankan, serta membuat hidup menjadi lebih sehat, produktif, dan nyaman. \r\n\r\nMisalnya, perangkat terhubung dapat mengubah keseluruhan rutinitas pagi Anda. Ketika Anda menekan tombol tunda, jam alarm Anda akan secara otomatis menyalakan mesin kopi dan membuka tirai jendela Anda. Kulkas Anda juga akan mendeteksi secara otomatis bahan makanan terakhir dan memesannya untuk pengiriman ke rumah. Oven pintar Anda akan memberi tahu menu hari ini — bahkan mungkin memasak bahan-bahan yang sudah diracik sebelumnya dan memastikan makan siang Anda sudah siap. Jam pintar Anda akan menjadwalkan rapat saat mobil terhubung Anda secara otomatis mengatur GPS untuk berhenti guna mengisi bahan bakar. Peluang tanpa batas di dunia IoT!', 'IOT.jpg'),
(8, 1, 'Jaringan Komputer', 'Internet sebenarnya adalah jaringan yang menghubungkan miliaran perangkat digital di seluruh dunia. Protokol standar memungkinkan komunikasi antara perangkat ini. Protokol-protokol tersebut termasuk protokol transfer hypertext (protokol transfer hypertext (http) di depan semua alamat situs web). Protokol internet (atau alamat IP) adalah nomor pengenal unik yang diperlukan untuk setiap perangkat yang mengakses internet. Alamat IP sebanding dengan alamat email Anda, memberikan informasi lokasi yang unik sehingga informasi dapat dikirimkan dengan benar.\r\n\r\nPenyedia Layanan Internet (ISP) dan Penyedia Layanan Jaringan (NSP) menyediakan infrastruktur yang memungkinkan transmisi paket data atau informasi melalui internet. Setiap informasi yang dikirim melalui internet tidak masuk ke setiap perangkat yang terhubung ke internet. Kombinasi protokol dan infrastrukturlah yang memberi tahu informasi dengan tepat ke mana harus pergi.\r\n\r\nSambungan kabel atau nirkabel dari dua komputer atau lebih untuk tujuan berbagi data dan sumber daya membentuk jaringan komputer. Saat ini, hampir semua perangkat digital terhubung ke jaringan komputer.\r\n\r\nDalam pengaturan kantor, Anda dan kolega Anda dapat berbagi akses ke printer atau sistem pesan grup. Jaringan komputasi yang memungkinkan hal ini kemungkinan besar adalah LAN atau jaringan area lokal yang memungkinkan departemen Anda berbagi sumber daya.\r\n\r\nPemerintah kota dapat mengelola jaringan kamera pengawas di seluruh kota yang memantau arus lalu lintas dan insiden. Jaringan ini akan menjadi bagian dari MAN atau jaringan area metropolitan yang memungkinkan petugas darurat kota untuk merespons kecelakaan lalu lintas, memberi saran kepada pengemudi tentang rute perjalanan alternatif, dan bahkan mengirimkan surat tilang kepada pengemudi yang menerobos lampu merah.\r\n\r\nWeather Company bekerja untuk menciptakan jaringan mesh peer-to-peer yang memungkinkan perangkat seluler berkomunikasi langsung dengan perangkat seluler lainnya tanpa memerlukan WiFi atau konektivitas seluler. Proyek Mesh Network Alerts memungkinkan pengiriman informasi cuaca yang menyelamatkan jiwa kepada miliaran orang, bahkan tanpa koneksi internet.', 'komp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `email`, `password`, `foto`) VALUES
(1, 'Maynanda', 'may@gmail.com', 'ec0c028a42b8633bd12d0f420fefaa77', 'may.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id_instruktur` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `kategori_bidang` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pengalaman` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id_instruktur`, `nama`, `kategori_bidang`, `deskripsi`, `foto`, `pendidikan`, `pengalaman`) VALUES
(1, 'Dr. Joko Priambodo', 5, 'seorang pakar dalam bidang Kecerdasan Buatan dengan pengalaman lebih dari 15 tahun dalam penelitian dan pengembangan teknologi AI. Beliau memiliki keahlian dalam pembelajaran mesin, pemrosesan bahasa alami, dan visi komputer. Selain itu, Dr. Andi juga sering menjadi pembicara di konferensi internasional dan memiliki berbagai publikasi di jurnal terkemuka. Dedikasinya dalam dunia pendidikan membuatnya aktif dalam mengajar dan membimbing mahasiswa untuk memahami serta mengaplikasikan teknologi AI dalam berbagai sektor industri.', 'joko.jpg', '1. Doktor (Ph.D.) dalam bidang Kecerdasan Buatan dari Universitas Teknologi Nanyang, Singapura.\r\n\r\n2. Magister (M.Sc.) dalam bidang Ilmu Komputer dari Universitas Indonesia.\r\n\r\n3. Sarjana (S.Kom) dalam bidang Teknik Informatika dari Institut Teknologi Ban', '1. Profesor di Departemen Ilmu Komputer, Universitas Indonesia (2015 - sekarang)\r\nKepala Peneliti di Pusat Inovasi dan Riset Kecerdasan Buatan, Universitas Indonesia (2012 - sekarang)\r\n\r\n2. Konsultan AI untuk berbagai perusahaan teknologi di Asia Tenggara'),
(2, 'Rina Wiryani', 2, 'seorang instruktur berpengalaman di bidang dasar pemrograman web. Dengan latar belakang yang kuat dalam pengembangan web front-end dan back-end, Ibu Rina telah membantu banyak mahasiswa dan profesional memahami konsep dasar HTML, CSS, JavaScript, dan kerangka kerja populer seperti React dan Angular. Beliau juga aktif dalam komunitas pengembang dan sering mengadakan workshop serta seminar tentang pemrograman web.', 'rina.jpg', '1. Magister (M.Sc.) dalam bidang Teknologi Informasi dari Universitas Gadjah Mada.\r\n\r\n2. Sarjana (S.Kom) dalam bidang Teknik Informatika dari Universitas Bina Nusantara.', '1. Instruktur Senior di Akademi Pengembangan Web, Jakarta (2015 - sekarang)\r\nWeb Developer di PT. Teknologi Nusantara (2012 - 2015)\r\n\r\n2. Freelance Web Developer (2009 - sekarang)\r\n\r\n3. Pembicara di berbagai konferensi dan seminar pemrograman web di Indon'),
(3, 'Nuha Rona', 3, 'seorang pengembang aplikasi mobile yang handal dengan pengalaman luas dalam membuat aplikasi untuk platform Android dan iOS. Beliau memiliki keahlian dalam berbagai bahasa pemrograman seperti Java, Kotlin, Swift, dan Flutter. Ibu Siti juga aktif dalam komunitas pengembang mobile dan sering berbagi pengetahuannya melalui blog dan video tutorial.\r\n', 'rona.jpg', '1. Magister (M.Sc.) dalam bidang Ilmu Komputer dari Universitas Indonesia.\r\n\r\n2. Sarjana (S.Kom) dalam bidang Teknik Informatika dari Universitas Gadjah Mada.', '1. Senior Mobile Developer di PT. Aplikasi Anak Bangsa (Gojek) (2018 - sekarang)\r\n\r\n2. Mobile Application Developer di Tokopedia (2015 - 2018)\r\n\r\n3. Freelance Mobile Developer (2012 - sekarang)\r\n\r\n4. Instruktur di berbagai workshop dan bootcamp pengembang'),
(4, 'Siti Rahmawati', 1, 'seorang ahli jaringan infrastruktur dengan pengalaman lebih dari 20 tahun dalam merancang dan mengelola jaringan komputer untuk berbagai organisasi besar. Beliau memiliki sertifikasi dari Cisco, Juniper, dan Mikrotik, serta memiliki keahlian dalam keamanan jaringan, manajemen server, dan konfigurasi perangkat jaringan. Bapak Joko juga aktif dalam memberikan pelatihan dan sertifikasi jaringan kepada para profesional di bidang IT.', 'siti.jpg', '1. Magister (M.Eng) dalam bidang Teknik Elektro dari Institut Teknologi Bandung.\r\n\r\n2. Sarjana (S.T) dalam bidang Teknik Elektro dari Universitas Diponegoro.', '1. Kepala Divisi Jaringan di PT. Telekomunikasi Indonesia (2010 - sekarang)\r\n\r\n2. Instruktur Sertifikasi Jaringan di Cisco Networking Academy (2005 - sekarang)\r\n\r\n3. Konsultan Jaringan untuk berbagai perusahaan multinasional (2000 - sekarang)\r\n\r\n4. Networ'),
(5, 'Ahmad Fauzi', 4, 'seorang pengembang fullstack dengan pengalaman lebih dari 10 tahun dalam mengembangkan aplikasi web dan mobile end-to-end. Beliau menguasai berbagai teknologi seperti Node.js, React, Angular, MongoDB, dan PostgreSQL. Bapak Ahmad juga dikenal sebagai mentor yang berdedikasi dalam membantu pengembang pemula memahami dan mengimplementasikan solusi fullstack yang efektif.', 'fauzi.jpg', '1. Magister (M.Sc.) dalam bidang Teknologi Informasi dari Universitas Bina Nusantara.\r\n\r\n2. Sarjana (S.Kom) dalam bidang Teknik Informatika dari Universitas Padjadjaran.', '1. Lead Fullstack Developer di PT. Teknologi Inovatif Indonesia (2018 - sekarang)\r\n\r\n2. Fullstack Developer di Bukalapak (2015 - 2018)\r\n\r\n3. Software Engineer di Traveloka (2012 - 2015)\r\n\r\n4. Mentor di berbagai bootcamp dan kursus pengembangan fullstack ('),
(6, 'Ibrahim', 6, 'seorang ahli dalam bidang Internet of Things (IoT) dengan pengalaman lebih dari 8 tahun dalam merancang, mengembangkan, dan menerapkan solusi IoT untuk berbagai kebutuhan industri dan kehidupan sehari-hari. Beliau memiliki pemahaman yang kuat tentang konsep-konsep dasar IoT, protokol komunikasi, perangkat keras (hardware), dan perangkat lunak (software) yang digunakan dalam lingkungan IoT. Ibu Maya juga aktif dalam berbagi pengetahuan melalui workshop, seminar, dan publikasi ilmiah di bidang IoT.', 'ibrahim.jpg', '1. Magister (M.Sc.) dalam Teknologi Informasi dari Universitas Indonesia\r\n\r\n2. Sarjana (S.Kom) dalam Teknik Informatika dari Universitas Gadjah Mada', '1. Peneliti IoT di Laboratorium Riset Teknologi Terapan, Universitas Indonesia (2015 - sekarang)\r\n\r\n2. Konsultan IoT untuk berbagai perusahaan teknologi dan industri (2012 - sekarang)\r\n\r\n3.Pembicara di konferensi dan seminar internasional tentang IoT (201');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `Judul`) VALUES
(1, 'Jaringan dan Infrastruktur'),
(2, 'Dasar Pemograman Web'),
(3, 'Pengembangan Aplikasi Mobile'),
(4, 'Pengembangan Fullstack'),
(5, 'Artificial Intelligence'),
(6, 'Internet of Things (IoT) ');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `isi`) VALUES
(1, 'Ultimate destination for online learning', 'designed to help you elevate your skills and reach new heights. Whether you\'re aiming to advance in your career, acquire new knowledge, or explore a new passion, our comprehensive courses are here to guide you every step of the way. Join our vibrant community of learners and start your journey to success with Skillwave today.'),
(2, 'Learn Anything You Want Today', 'platform pembelajaran daring yang menawarkan berbagai kursus khusus dalam bidang Teknologi Informasi (TI). Kami menyediakan akses ke kursus-kursus berkualitas tinggi yang dirancang oleh para ahli industri untuk membantu Anda mengembangkan keterampilan TI yang dibutuhkan di dunia kerja yang terus berkembang.'),
(3, 'Top Quality Content', 'Platform pembelajaran daring yang menawarkan kursus-kursus dengan standar kualitas tertinggi. Kami menyediakan akses kepada materi-materi yang telah disusun secara cermat oleh para ahli industri untuk memastikan bahwa setiap kursus memberikan nilai tambah yang signifikan bagi para peserta.'),
(4, 'Highly Skilled Instructor', 'Setiap instruktur dipilih dengan hati-hati berdasarkan pengetahuan, pengalaman, dan keahlian mereka di bidangnya masing-masing. Mereka bukan hanya ahli dalam subjek yang mereka ajarkan, tetapi juga memiliki kemampuan untuk menyampaikan materi dengan cara yang menarik dan mudah dipahami.'),
(5, 'World Class', 'standar yang kami pegang teguh di dalam segala yang kami lakukan. Kami bertekad untuk memberikan pengalaman pembelajaran yang setara dengan standar dunia, baik dalam hal konten, instruktur, maupun fasilitas yang kami sediakan.'),
(6, 'Get Certified', 'jaminan dari kami kepada Anda bahwa setiap kursus yang Anda selesaikan di platform kami akan dihargai dengan sertifikat resmi yang diakui secara internasional. Kami memahami pentingnya sertifikasi dalam menunjukkan kemahiran dan pencapaian Anda kepada dunia, dan itulah mengapa kami berkomitmen untuk menyediakan kesempatan ini kepada semua peserta kursus kami.');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `jenis_payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `jenis_payment`) VALUES
(1, 'Bank Transfer'),
(2, 'E-Wallet');

-- --------------------------------------------------------

--
-- Table structure for table `subjek`
--

CREATE TABLE `subjek` (
  `id_subjek` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `instruktur` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_subjek` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjek`
--

INSERT INTO `subjek` (`id_subjek`, `id_kategori`, `instruktur`, `harga`, `nama_subjek`) VALUES
(1, 1, 4, 200000, 'Keamanan Jaringan'),
(2, 2, 2, 300000, 'JavaScript'),
(3, 4, 5, 250000, 'Web Development'),
(4, 3, 3, 500000, 'Dasar-dasar Kotlin dan Java'),
(5, 5, 1, 450000, 'Vision Computing'),
(6, 6, 6, 300000, 'Integrasi Data IoT');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_subjek` int(11) NOT NULL,
  `id_instruktur` int(11) NOT NULL,
  `id_payment` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `creation_date` date NOT NULL DEFAULT curdate(),
  `creation_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id_instruktur`),
  ADD KEY `kategori_bidang` (`kategori_bidang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `subjek`
--
ALTER TABLE `subjek`
  ADD PRIMARY KEY (`id_subjek`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `instruktur` (`instruktur`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_subjek` (`id_subjek`),
  ADD KEY `id_instruktur` (`id_instruktur`),
  ADD KEY `fk_transaksi_payment` (`id_payment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id_instruktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjek`
--
ALTER TABLE `subjek`
  MODIFY `id_subjek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD CONSTRAINT `instruktur_ibfk_1` FOREIGN KEY (`kategori_bidang`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `subjek`
--
ALTER TABLE `subjek`
  ADD CONSTRAINT `subjek_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `subjek_ibfk_2` FOREIGN KEY (`instruktur`) REFERENCES `instruktur` (`id_instruktur`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`),
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_subjek`) REFERENCES `subjek` (`id_subjek`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_instruktur`) REFERENCES `instruktur` (`id_instruktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
