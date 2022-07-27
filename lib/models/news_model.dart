class NewsModel {
  String author;
  String title;
  String description;
  String date;
  String urlImages;
  List<String> urlImagesAll;

  NewsModel(
      {required this.author,
      required this.title,
      required this.description,
      required this.date,
      required this.urlImages,
      required this.urlImagesAll});
}

var newsList = [
  NewsModel(
    author: "Bagas Makhali",
    title:
        'Bocoran Spesifikasi Chipset Buatan Apple A16 Untuk iPhone 14 Mendatang - Selular.ID ',
    description:
        'Bocoran Spesifikasi Chipset Buatan Apple A16 Untuk iPhone 14 Mendatang - Selular.ID',
    date: '2022-07-26',
    urlImages:
        'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg',
    urlImagesAll: [
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg',
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg',
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg'
    ],
  ),
  NewsModel(
    author: "Diki Wahyudi",
    title:
        'Uni Eropa Akhirnya Izinkan Vaksin Cacar Monyet Dipasarkan - Pikiran Rakyat Depok - Pikiran Rakyat Depok ',
    description:
        'Uni Eropa telah memberikan izin kepada bioteknologi Denmark Bavarian Nordic untuk memasarkan vaksin Bavaria untuk cacar monyet.',
    date: '2022-08-21',
    urlImages:
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2022/05/24/2129512242.jpg',
    urlImagesAll: [
      'https://www.menpan.go.id/site/images/berita/2021/20210910_-_Mitos-Mitos_Tentang_Vaksin_COVID-19.jpeg',
      'https://www.menpan.go.id/site/images/berita/2021/20210910_-_Mitos-Mitos_Tentang_Vaksin_COVID-19.jpeg',
      'https://www.menpan.go.id/site/images/berita/2021/20210910_-_Mitos-Mitos_Tentang_Vaksin_COVID-19.jpeg'
    ],
  ),
  NewsModel(
    author: "CNN Indonesia",
    title:
        'Kereta Api Tabrak Odong-Odong di Serang, 9 Orang Tewas - CNN Indonesia',
    description:
        'Kereta api menabrak odong-odong yang membawa anak-anak di perlintasan Desa Silebu, Serang, Banten. Sembilan orang dilaporkan meninggal dunia.',
    date: '2022-11-12',
    urlImages:
        'https://akcdn.detik.net.id/visual/2022/02/24/geliat-pembuatan-mobil-odong-odong-11_169.jpeg',
    urlImagesAll: [
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg',
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg',
      'https://awsimages.detik.net.id/community/media/visual/2022/07/07/iphone-14-pro_169.jpeg'
    ],
  ),
  NewsModel(
    author: "Liputan 6",
    title: 'iPhone 14 Pro dan Pro Max Bakal Pakai RAM 6GB - Liputan6.com',
    description:
        'Kabarnya Apple iPhone 14 Pro dan iPhone 14 Pro Max bakal menggunakan RAM 6GB versi baru dengan performa tinggi, dan lebih efisien.',
    date: '2022-11-12',
    urlImages:
        'https://cdn0-production-images-kly.akamaized.net/yYRzKlD5wRHzRmgg1kxPcfwbJXY=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3943573/original/081613800_1645615037-bocoran_iPhone_14.jpg',
    urlImagesAll: [
      'https://cdn0-production-images-kly.akamaized.net/yYRzKlD5wRHzRmgg1kxPcfwbJXY=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3943573/original/081613800_1645615037-bocoran_iPhone_14.jpg',
      'https://cdn0-production-images-kly.akamaized.net/yYRzKlD5wRHzRmgg1kxPcfwbJXY=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3943573/original/081613800_1645615037-bocoran_iPhone_14.jpg',
      'https://cdn0-production-images-kly.akamaized.net/yYRzKlD5wRHzRmgg1kxPcfwbJXY=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3943573/original/081613800_1645615037-bocoran_iPhone_14.jpg',
      'https://cdn0-production-images-kly.akamaized.net/yYRzKlD5wRHzRmgg1kxPcfwbJXY=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3943573/original/081613800_1645615037-bocoran_iPhone_14.jpg',
    ],
  ),
  NewsModel(
    author: "Fauzie Pradita Abbas, Tim TvOne",
    title:
        'Pukul 15.30 WIB Irjen Ferdy Sambo dan Putri Candrawathi Tiba di Jakarta dari Magelang, Brigadir J Juga Ada, Tak Ada Penyiksaan? - tvOneNews.com',
    description:
        'Berita Pukul 15.30 WIB Irjen Ferdy Sambo dan Putri Candrawathi Tiba di Jakarta dari Magelang, Brigadir J Juga Ada, Tak Ada Penyiksaan? terbaru hari ini 2022-07-27 14:49:54 dari sumber yang terpercaya',
    date: '2022-11-10',
    urlImages:
        'https://thumb.tvonenews.com/thumbnail/2022/07/27/62e0cef7e2403-putri-candrawathi-irjen-ferdy-sambo-dan-brigadir-j_488_274.jpg',
    urlImagesAll: [
      'https://thumb.tvonenews.com/thumbnail/2022/07/27/62e0cef7e2403-putri-candrawathi-irjen-ferdy-sambo-dan-brigadir-j_488_274.jpg',
      'https://thumb.tvonenews.com/thumbnail/2022/07/27/62e0cef7e2403-putri-candrawathi-irjen-ferdy-sambo-dan-brigadir-j_488_274.jpg',
      'https://thumb.tvonenews.com/thumbnail/2022/07/27/62e0cef7e2403-putri-candrawathi-irjen-ferdy-sambo-dan-brigadir-j_488_274.jpg'
    ],
  ),
  NewsModel(
    author: "CNN Indonesia",
    title:
        'Polisi: Pria yang Bubarkan Citayam Fashion Week Juru Parkir Liar - detikNews',
    description:
        'Kereta api menabrak odong-odong yang membawa anak-anak di perlintasan Desa Silebu, Serang, Banten. Sembilan orang dilaporkan meninggal dunia.',
    date: '2022-11-12',
    urlImages:
        'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
    urlImagesAll: [
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
      'https://awsimages.detik.net.id/api/wm/2022/07/26/citayam-fashion-week-rakha-arlyanto-dharmawandetikcom-1_169.jpeg?wid=54&w=650&v=1&t=jpeg',
    ],
  ),
];
