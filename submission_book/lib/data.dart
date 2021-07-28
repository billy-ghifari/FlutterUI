import 'package:flutter/material.dart';

class Articles {
  final String name;
  final String title;
  final int time;
  final String imageUrl;
  final Color color;
  final String story;
  Articles({this.name, this.title, this.time, this.imageUrl, this.color, this.story});
}

List<Articles> topArticles = [
  Articles(
    name: 'Marchella FP',
    imageUrl: "assets/images/Book1.jpg",
    time: 2,
    color: Color(0xff1b262c),
    title: "Nanti Kita Cerita Tentang\nHari Ini",
    story: "Novel Nanti Kita Cerita Tentang Hari Ini, atau yang lebih banyak dikenal dengan NKCTHI ternyata masih berada di posisi pertama sebagai novel Indonesia best seller November 2018 di Gramedia.com, Bumi gak hanya berputar buat kita. Jadi jangan egois. Dengan frasa yang merupa flash fiction, novel ini sesungguhnya merupakan kumpulan wejangan dari seorang ibu bernama Awan, untuk anak cucunya di masa depan. Tiap halamannya tertoreh kata-kata yang dibalut dengan desain gambar menarik yang begitu mengena di hati. Membuat novel ini banyak digandrungi para penggemarnya yang telah terlebih dulu mengenalnya melalui akun Instagram @nkcthi."
),
  Articles(
      imageUrl: "assets/images/Book2.jpg",
      name: "dr. Gia Pratama",
      time: 2,
      title: "Berhenti di Kamu",
      color: Color(0xff1b262c),
      story: "Berawal dari cuitan di Twitter tentang jatuh bangun kisah cintanya, kini Gia Pratama yang berprofesi sebagai dokter mencurahkan kisahnya itu ke dalam sebuah buku yang diberi judul #Berhentidikamu.Meski buku fisik #Berhentidikamu baru bisa didapat 8 Desember 2018, namun pre-order buku ini laris sejak pertama dibuka pada 23 November 2018 lalu.Perkara cinta yang sempat membuatnya terpuruk, namun pulih kembali setelah berhasil menolong seorang pasiennya yang bisulan. Perkara Tuhan yang memang telah menyiapkan yang terbaik untuk Gia dengan memisahkan cinta yang menurutnya sempurna. Sungguh roller coaster kisah cintanya begitu menarik untuk disimak sampai membuatnya berada di posisi kedua untuk novel best seller bulan November kali ini."
),

Articles(
    imageUrl: "assets/images/Book3.jpg",
    name: "Pramoedya Ananta Toer",
    time: 5,
    title: "Bumi Manusia",
    color: Color(0xff1b262c),
    story: "Naskah Bumi Manusia dibuat ketika Pram diasingkan dan dipenjara di Pulau Buru. Naskah ini telah melewati masa-masa buruk bersama Pram mulai disembunyikan, dikubur, disita, hingga ditulis kembali. Kini, buku ini dielu-elukan sebagai karya sastra Indonesia terbesar dan mendapatkan 12 penghargaan internasional. Dengan mengambil latar belakang Indonesia di awal abad ke-20, Roman Tetralogi Buru karya Pramoedya Ananta Toer yang telah diangkat ke layar lebar pada Agustus lalu ini pun juga masih menjadi bahan baca incaran hingga November ini, lho!",
),
  Articles(
      imageUrl: "assets/images/Book4.jpg",
      name: "Anodia Shula Neona Ayu",
      time: 3,
      title: "Kids Zaman Neo",
      color: Color(0xff1b262c),
      story:"Sudah dapat bukunya? Pre-order buku Kids Zaman Neo sudah dimulai dari 1 hingga 5 November 2018 kemarin. Buku ini begitu seru untuk dibaca, karena Anodia Shula Neona Ayu atau Neona akan bercerita tentang awal mula dirinya terjun di dunia hiburan, passion, cita-cita, sampai menyanyi bersamanya. Dalam bukunya ini, Neona juga akan bercerita tentang beberapa rahasianya. Untuk para orangtua yang ingin memotivasi anak, buku ini cocok sekali rasanya dijadikan salah satu referensi. Buku ini pun menjadi salah satu buku yang paling diminati pada November 2018.",
  ),
  Articles(
      imageUrl: "assets/images/Book5.jpg",
      name: "Fiersa Besari",
      time: 3,
      title: "11:11",
      color: Color(0xff1b262c),
      story :"11.11 bercerita tentang jodoh yang sebenarnya nggak akan kemana-mana sebelum akhirnya menetap pada 1 hati ketika waktunya telah tiba. 11.11 begitu ditunggu para penggemar Fiersa yang begitu berhasil membuat terhanyut pembacanya sampai ke hati. 11.11 telah terbit sejak 11 November, dengan 11 lagu, dan 11 cerita.",
  ),
  Articles(
      imageUrl: "assets/images/Book6.jpg",
      name: "Fiersa Besari",
      time: 3,
      title: "Garis Waktu: Sebuah Perjalanan\n Menghapus Luka",
      color: Color(0xff1b262c),
      story :"Setelah Konspirasi Alam Semesta, Karya kedua dari Fiersa Besari yang berisikan kumpulan cerita yang saling berkaitan ini merupakan memoar hati yang dirangkai indah lengkap dengan rima yang menarik oleh si penulis yang juga seorang penyanyi ini. Dibuat seolah bermonolog, membuat kisah di dalamnya memiliki daya tarik tersendiri. Pelajari sebelum berasumsi. Dengarkan sebelum memaki. Mengerti sebelum menghakimi. Rasakan sebelum menyakiti. Perjuangkan sebelum pergi. Kumpulan cerpen ini sebenarnya telah terbit sejak 2016 lalu tapi masih begitu banyak dicari hingga November ini pun gelar best seller masih dijajaki.",
  ),
];
