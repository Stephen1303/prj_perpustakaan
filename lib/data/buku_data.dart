import 'package:prj_perpustakaan/models/buku.dart';

var bukuList = [
  Buku(
    title: 'Laskar Pelangi',
    author: 'Andrea Hirata',
    description:
      'Cerita terjadi di Desa Gantung, Belitung Timur. Dimulai ketika sekolah Muhammadiyah terancam akan dibubarkan oleh Depdikbud Sumsel jikalau tidak mencapai siswa baru sejumlah 10 anak. Ketika itu baru 9 anak yang menghadiri upacara pembukaan, akan tetapi tepat ketika Pak Harfan, sang kepala sekolah, hendak berpidato menutup sekolah, Harun dan ibunya datang untuk mendaftarkan diri di sekolah kecil itu.'+
      'Dari sanalah dimulai cerita mereka. Mulai dari penempatan tempat duduk, pertemuan mereka dengan Pak Harfan, perkenalan mereka yang luar biasa di mana A Kiong yang malah cengar-cengir ketika ditanyakan namanya oleh guru mereka, Bu Mus. Kejadian bodoh yang dilakukan oleh Borek, pemilihan ketua kelas yang diprotes keras oleh Kucai, kejadian ditemukannya bakat luar biasa Mahar, pengalaman cinta pertama Ikal, sampai pertaruhan nyawa Lintang yang mengayuh sepeda 80 km pulang pergi dari rumahnya ke sekolah.'+
      'Mereka, Laskar Pelangi –nama yang diberikan Bu Muslimah akan kesenangan mereka terhadap pelangi– pun sempat mengharumkan nama sekolah dengan berbagai cara. Misalnya pembalasan dendam Mahar yang selalu dipojokkan kawan-kawannya karena kesenangannya pada okultisme yang membuahkan kemenangan manis pada karnaval 17 Agustus, dan kegeniusan luar biasa Lintang yang menantang dan mengalahkan Drs. Zulfikar, guru sekolah kaya PN yang berijazah dan terkenal, dan memenangkan lomba cerdas cermat. Laskar Pelangi mengarungi hari-hari menyenangkan, tertawa dan menangis bersama. Kisah sepuluh kawanan ini berakhir dengan kematian ayah Lintang yang memaksa Einstein cilik itu putus sekolah dengan sangat mengharukan, dan dilanjutkan dengan kejadian 12 tahun kemudian di mana Ikal yang berjuang di luar pulau Belitong kembali ke kampungnya. Kisah indah ini diringkas dengan kocak dan mengharukan oleh Andrea Hirata, kita bahkan bisa merasakan semangat masa kecil anggota sepuluh Laskar Pelangi ini.',
    published: '2005',
    genre: 'Fiksi, Inspirasi',
    harga: 90000,
    imageAsset: 'images/Laskar_pelangi_sampul.jpg',
    imageUrls: [
      'https://id.wikipedia.org/wiki/Laskar_Pelangi#/media/Berkas:Laskar_pelangi_sampul.jpg'
      'https://upload.wikimedia.org/wikipedia/id/8/8e/Laskar_pelangi_sampul.jpg'
    ],
    isFavorite: true,

  ),
  
  Buku(
    title: 'Ayat-Ayat Cinta',
    author: 'Habiburrahman El Shirazy',
    description:
      'Tentang seorang pemuda Indonesia yang mencari ilmu jauh di tanah Arab. Berbekal iman yang kuat dan ketabahan, Fahri mengalami banyak hal yang menggetarkan hidupnya, yang sesaat membuat Fahri mempertanyakan jalan hidupnya.'+
      'Kesabaran dan keimanan adalah kunci kehidupan. Fahri, Aisyah dan Maria membuktikannya dalam cerita yang halus dan mengalir.',
    published: '2004',
    genre: 'Romantis, Religi',
    harga: 75000,
    imageAsset: 'images/Ayatayatcinta.jpg',
    imageUrls: [
      'https://id.wikipedia.org/wiki/Ayat-Ayat_Cinta_(novel)#/media/Berkas:Ayatayatcinta.jpg',
      'https://upload.wikimedia.org/wikipedia/id/thumb/b/b4/Ayatayatcinta.jpg/330px-Ayatayatcinta.jpg'
    ],
    isFavorite: false,
  ),
  
  Buku(
    title: '1984',
    author: 'George Orwell',
    description:
        '1984 adalah novel dystopia yang mengisahkan kehidupan Winston Smith, seorang warga negara dalam masyarakat totalitarian yang dikuasai oleh pemerintahan yang mengawasi setiap gerakan individu.',
    published: '1949',
    genre: 'Fiksi Ilmiah, Dystopia',
    harga: 100000,
    imageAsset: 'images/1984_first_edition_cover.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four#/media/File:1984_first_edition_cover.jpg',
      'https://upload.wikimedia.org/wikipedia/en/5/51/1984_first_edition_cover.jpg'
    ],
    isFavorite: false,
  ),
  
  Buku(
    title: 'The Alchemist',
    author: 'Paulo Coelho',
    description:
        'The Alchemist adalah novel filosofis yang mengisahkan perjalanan seorang gembala muda bernama Santiago untuk menemukan harta karun di Piramida Mesir.',
    published: '1988',
    genre: 'Fiksi, Petualangan, Filosofi',
    harga: 70000,
    imageAsset: 'images/TheAlchemist.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/The_Alchemist_(novel)#/media/File:TheAlchemist.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/c/c4/TheAlchemist.jpg'
    ],
    isFavorite: true,
  ),
  
  Buku(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    description:
        'To Kill a Mockingbird adalah novel yang mengeksplorasi masalah-masalah rasial dan ketidakadilan sosial di Amerika Selatan pada masa Depresi Besar.',
    published: '1960',
    genre: 'Fiksi, Drama, Sosial',
    harga: 1150000,
    imageAsset: 'images/800px-To_Kill_a_Mockingbird_(first_edition_cover).jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/To_Kill_a_Mockingbird#/media/File:To_Kill_a_Mockingbird_(first_edition_cover).jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg/800px-To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg'
    ],
    isFavorite: false,
  ),
  
  Buku(
    title: 'The Great Gatsby',
    author: 'F. Scott Fitzgerald',
    description:
        'The Great Gatsby adalah novel yang mengeksplorasi tema-tema impian Amerika, kemewahan, dan kekecewaan di era 1920-an di New York.',
    published: '1925',
    genre: 'Fiksi, Klasik',
    harga: 75000,
    imageAsset: 'images/The_Great_Gatsby_Cover_1925_Retouched.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/The_Great_Gatsby#/media/File:The_Great_Gatsby_Cover_1925_Retouched.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg/800px-The_Great_Gatsby_Cover_1925_Retouched.jpg'
    ],
    isFavorite: true,
  ),
  
  Buku(
    title: 'Moby-Dick',
    author: 'Herman Melville',
    description:
        'Moby-Dick adalah novel petualangan yang mengikuti obsesi Kapten Ahab untuk memburu paus putih legendaris, Moby Dick.',
    published: '1851',
    genre: 'Fiksi, Petualangan, Klasik',
    harga: 160000,
    imageAsset: 'images/800px-Moby-Dick_FE_title_page.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/Moby-Dick#/media/File:Moby-Dick_FE_title_page.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Moby-Dick_FE_title_page.jpg/800px-Moby-Dick_FE_title_page.jpg'
    ],
    isFavorite: false,
  ),
  
  Buku(
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    description:
        'Pride and Prejudice adalah novel romantis yang mengisahkan hubungan antara Elizabeth Bennet dan Mr. Darcy di Inggris pada abad ke-19.',
    published: '1813',
    genre: 'Romantis, Klasik',
    harga: 88000,
    imageAsset: 'images/PrideAndPrejudiceTitlePage.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/Pride_and_Prejudice#/media/File:PrideAndPrejudiceTitlePage.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/PrideAndPrejudiceTitlePage.jpg/800px-PrideAndPrejudiceTitlePage.jpg'
    ],
    isFavorite: true,
  ),
  
  Buku(
    title: 'Dilan: Dia adalah Dilanku Tahun 1990',
    author: 'Pidi Baiq',
    description:
      'Dilan adalah seorang siswa SMA di Bandung, sedangkan Milea adalah siswa baru, pindahan dari Jakarta. Sejak kali pertama mengetahui Milea, Dilan tertarik lalu mendekatinya. Cara Dilan untuk mendekati Milea sangatlah unik.'+
      'Cara Dilan untuk mendekati Milea ini lama-lama berbalas. Meskipun Milea saat itu memiliki pacar di Jakarta bernama Beni. Awalnya Milea ragu untuk membalas perasaan pada Dilan karena dia telah memiliki Beni. Namun, kejadian saat Milea ke Jakarta membuatnya mengakhiri hubungan dengan Beni.'+
      'Milea datang ke Jakarta untuk mendukung temannya yang ikut lomba cerdas cermat. Saat itu Milea janjian dengan Beni untuk bertemu, tetapi Beni tak kunjung datang. Akhirnya Milea makan dengan Nandan dan Wati. Beni datang memarahi Milea karena tak terima Milea makan dengan laki-laki lain. Pada saat inilah Milea resmi mengakhiri hubungan dengan Beni.'+
      'Dilan dan Milea mengakui saling suka. Hubungan keduanya semakin serius. Bahkan Dilan beberapa kali mengajak Milea ke rumahnya untuk dikenalkan pada keluarga terutama bundanya. Begitu juga dengan Milea, yang mengajak Dilan untuk berkunjung ke rumah Milea. Bagaimana kisah selanjutnya?',
    published: '2014',
    genre: 'Roman',
    harga: 100000,
    imageAsset: 'images/22037542.jpg',
    imageUrls: [
      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442310576i/22037542.jpg',
      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1442310576i/22037542.jpg'
    ],
    isFavorite: false,
  ),
  
  Buku(
    title: 'Brave New World',
    author: 'Aldous Huxley',
    description:
        'Brave New World menggambarkan masyarakat futuristik yang tampaknya sempurna tetapi dengan pengorbanan kebebasan individu.',
    published: '1932',
    genre: 'Fiksi Ilmiah, Dystopia',
    harga: 1050000,
    imageAsset: 'images/BraveNewWorld_FirstEdition.jpg',
    imageUrls: [
      'https://en.wikipedia.org/wiki/Brave_New_World#/media/File:BraveNewWorld_FirstEdition.jpg',
      'https://upload.wikimedia.org/wikipedia/en/6/62/BraveNewWorld_FirstEdition.jpg'
    ],
    isFavorite: false,
  ),
 
];