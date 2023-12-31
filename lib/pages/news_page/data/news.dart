class News {
  final String name;
  final String image;
  final String description;
  final String date;
  final String category;
  final int views;
  final String duration;

  News({
    required this.name,
    required this.duration,
    required this.image,
    required this.description,
    required this.date,
    required this.category,
    required this.views,
  });
}

List<News> news = [
  News(name: "Google Luncurkan Versi Terbaru Android 13",
      duration: "5min",
      image: "assets/news/android13.png",
      description: "Google meluncurkan versi terbaru Android 13 pada tanggal 25 Oktober 2023. Versi ini memiliki berbagai fitur baru, seperti peningkatan performa, keamanan, dan privasi. Salah satu fitur baru yang paling menonjol adalah fitur privasi yang lebih ketat, seperti izin kamera dan mikrofon yang harus disetujui secara manual oleh pengguna.",
      date: "25 Oktober 2023",
      category: "Pemrograman",
      views: 2300),
  News(name: "Python Jadi Bahasa Pemrograman Terpopuler",
      duration: "5min",
      image: "assets/news/python.jpg",
      description: "Python menjadi bahasa pemrograman terpopuler di dunia. Bahasa ini populer karena mudah dipelajari dan digunakan untuk berbagai keperluan, seperti pengembangan web, data science, dan machine learning.",
      date: " 26 Oktober 2023",
      category: "Pemrograman",
      views: 2300),
  News(name: "Pengembangan VR & AR",
      duration: "5min",
      image: "assets/news/vr.jpg",
      description: "VR menciptakan lingkungan simulasi yang dapat dimanipulasi oleh pengguna. AR menambahkan elemen digital ke dunia nyata. Kedua teknologi ini dapat digunakan untuk berbagai keperluan, seperti hiburan, pendidikan, dan pelatihan.",
      date: " 26 Januari 2023",
      category: "Pemrograman",
      views: 2300),
  News(name: "Google AI Luncurkan Model Bahasa Baru, Bard, yang Lebih Canggih",
      duration: "10min",
      image: "assets/news/bard.jpg",
      description: "Google AI meluncurkan model bahasa baru, Bard, yang diklaim lebih canggih dari model bahasa sebelumnya, seperti GPT-3 dan LaMDA. Bard dapat menghasilkan teks, menerjemahkan bahasa, menulis berbagai jenis konten kreatif, dan menjawab pertanyaan dengan cara yang informatif.",
      date: "1 Agustus 2023",
      category: "Pemrograman",
      views: 8900),
  News(name: "Kemendikbudristek Luncurkan Program Kampus Merdeka",
      duration: "6min",
      image: "assets/news/kemdikbud.jpg",
      description: "Kemendikbudristek meluncurkan program Kampus Merdeka. Program ini bertujuan untuk memberikan kesempatan kepada mahasiswa untuk belajar di luar kampus.",
      date: " 26 Oktober 2023",
      category: "Studi",
      views: 1300),
  News(name: "Perang Rusia-Ukraina Masih Berlanjut",
      duration: "7min",
      image: "assets/news/ukraine.jpg",
      description: "Perang Rusia-Ukraina masih berlanjut hingga saat ini. Belum ada tanda-tanda bahwa perang akan segera berakhir.",
      date: " 21 Oktober 2023",
      category: "International",
      views: 5000),
  News(name: "Toyota Luncurkan Mobil Listrik Baru",
      duration: "7min",
      image: "assets/news/electricar.jpg",
      description: "Toyota meluncurkan mobil listrik baru, bZ4X, di Indonesia. Mobil ini memiliki baterai berkapasitas 71,4 kWh yang dapat menempuh jarak hingga 450 kilometer.",
      date: " 19 Oktober 2023",
      category: "Otomotif",
      views: 2300),
  News(name: "Cuaca Ekstrem Landa Indonesia",
      duration: "7min",
      image: "assets/news/flood.jpg",
      description: "Cuaca ekstrem melanda Indonesia pada akhir Oktober 2023. Banjir, tanah longsor, dan angin kencang terjadi di berbagai wilayah di Indonesia. Cuaca ekstrem ini disebabkan oleh fenomena La Nina.",
      date: "28 Oktober 2023",
      category: "Daily Life",
      views: 1500),


];

List<News> trendingNews = [
  News(
    name: "Apple Merilis iPhone 14 Pro Max",
    duration: "8min",
    image: "assets/news/iphone14.jpg",
    description: "Apple resmi merilis iPhone 14 Pro Max dengan berbagai fitur baru. Ponsel ini dilengkapi dengan kamera canggih, layar ProMotion 120Hz, dan performa yang ditingkatkan.",
    date: "3 November 2023",
    category: "Teknologi",
    views: 4500,
  ),
  News(
    name: "Peneliti Temukan Planet Baru Mirip Bumi",
    duration: "6min",
    image: "assets/news/exoplanet.jpeg",
    description: "Sebuah tim peneliti telah menemukan planet ekstrasolar (exoplanet) yang memiliki kemiripan dengan Bumi. Penemuan ini menarik perhatian ilmuwan dan astronom di seluruh dunia.",
    date: "4 November 2023",
    category: "Astronomi",
    views: 3200,
  ),
  News(
    name: "Peluncuran Teleskop Luar Angkasa James Webb",
    duration: "9min",
    image: "assets/news/jamesweb.jpeg",
    description: "NASA bersiap untuk meluncurkan Teleskop Luar Angkasa James Webb, yang dianggap sebagai pencapaian luar biasa dalam bidang astronomi dan penelitian luar angkasa.",
    date: "5 November 2023",
    category: "Astronomi",
    views: 5800,
  ),
  News(
    name: "Peluncuran Game Terbaru: Cyberverse Online",
    duration: "7min",
    image: "assets/news/cyberverse.jpeg",
    description: "Game online terbaru, Cyberverse Online, akan segera diluncurkan. Game ini menawarkan pengalaman bermain yang mendalam dalam dunia virtual yang penuh petualangan.",
    date: "6 November 2023",
    category: "Gaming",
    views: 3900,
  ),
  News(
    name: "Vaksinasi COVID-19 Terus Berlangsung",
    duration: "5min",
    image: "assets/news/vaccinee.jpeg",
    description: "Upaya vaksinasi COVID-19 terus berlanjut di seluruh dunia. Banyak negara bekerja keras untuk memvaksinasi penduduknya guna mengendalikan penyebaran virus.",
    date: "7 November 2023",
    category: "Kesehatan",
    views: 7100,
  ),
];

