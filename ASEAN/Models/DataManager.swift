//
//  DataManager.swift
//  ASEAN
//
//  Created by Ricki Bin Yamin on 27/06/20.
//  Copyright © 2020 Ricki Bin Yamin. All rights reserved.
//

import UIKit

class DataManager {
    static var shared = DataManager()
    
    func fetchData() -> [Country] {
        return [
            Country(country: "Indonesia", capital: "Jakarta", independence: "17 Agustus 1945", photos: [UIImage(named: "IndonesiaPhoto"), UIImage(named: "IndonesiaPhoto1"), UIImage(named: "IndonesiaPhoto2"), UIImage(named: "IndonesiaPhoto3"), UIImage(named: "IndonesiaPhoto4"), UIImage(named: "IndonesiaPhoto5")], flag: UIImage(named: "IndonesiaFlag"), semboyan: "Bhineka Tunggal Ika", nationalAnthem: "Indonesia Raya", languages: "Bahasa Indonesia dan 700+ Bahasa Daerah", language: "Bahasa", information: """
            Indonesia disebut juga dengan Republik Indonesia (RI) atau Negara Kesatuan Republik Indonesia (NKRI), adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia. Indonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau. Nama alternatif yang biasa dipakai adalah Nusantara. Dengan populasi Hampir 270.054.853 jiwa pada tahun 2018, Indonesia adalah negara berpenduduk terbesar keempat di dunia dan negara yang berpenduduk Muslim terbesar di dunia, dengan lebih dari 230 juta jiwa.

            Bentuk negara Indonesia adalah negara kesatuan dan bentuk pemerintahan Indonesia adalah republik, dengan Dewan Perwakilan Rakyat, Dewan Perwakilan Daerah dan Presiden yang dipilih secara langsung.

            Ibu kota negara Indonesia adalah Jakarta. Indonesia berbatasan darat dengan Malaysia di Pulau Kalimantan, dengan Papua Nugini di Pulau Papua dan dengan Timor Leste di Pulau Timor. Negara tetangga lainnya adalah Singapura, Filipina, Australia, dan wilayah persatuan Kepulauan Andaman dan Nikobar di India.

            Sejarah Indonesia banyak dipengaruhi oleh bangsa lainnya. Kepulauan Indonesia menjadi wilayah perdagangan penting sejak abad ke-7, yaitu sejak berdirinya Kerajaan Sriwijaya, sebuah kemaharajaan Hindu-Buddha yang berpusat di Palembang. Kerajaan Sriwijaya ini menjalin hubungan agama dan perdagangan dengan Tiongkok dan India, juga dengan bangsa Arab. Kerajaan-kerajaan beragama Hindu dan/atau Buddha mulai tumbuh pada awal abad ke-4 hingga abad ke-13 Masehi, diikuti para pedagang dan ulama dari jazirah Arab yang membawa agama Islam sekitar abad ke-8 hingga abad ke-16, serta kedatangan bangsa Eropa pada akhir abad ke-15 yang saling bertempur untuk memonopoli perdagangan rempah-rempah Maluku semasa era penjelajahan samudra. Setelah berada di bawah penjajahan Belanda selama hampir 3 abad, Indonesia yang saat itu bernama Hindia Belanda menyatakan kemerdekaannya di akhir Perang Dunia II, tepatnya tanggal 17 Agustus 1945. Selanjutnya, Indonesia mendapat berbagai tantangan dan persoalan berat, mulai dari seringnya terjadi bencana alam, praktik korupsi yang masif, konflik sosial, gerakan separatisme, proses demokratisasi, dan periode pembangunan, perubahan dan perkembangan sosial-ekonomi-politik, serta modernisasi yang pesat.

            Dari Sabang di ujung Aceh sampai Merauke di tanah Papua, Indonesia terdiri dari berbagai suku bangsa, bahasa, dan agama. Berdasarkan rumpun bangsa (ras), Indonesia terdiri atas bangsa asli pribumi yakni Mongoloid Selatan/Austronesia dan Melanesia di mana bangsa Austronesia yang terbesar jumlahnya dan lebih banyak mendiami Indonesia bagian barat. Secara lebih spesifik, suku bangsa Jawa adalah suku bangsa terbesar dengan populasi mencapai 41,7% dari seluruh penduduk Indonesia. Semboyan nasional Indonesia, "Bhinneka tunggal ika" ("Berbeda-beda namun tetap satu"), bermakna keberagaman sosial-budaya yang membentuk satu kesatuan/negara. Selain memiliki populasi penduduk yang padat dan wilayah yang luas, Indonesia memiliki wilayah alam yang mendukung tingkat keanekaragaman hayati terbesar kedua di dunia.

            Indonesia merupakan anggota dari PBB dan satu-satunya anggota yang pernah keluar dari PBB, yaitu pada tanggal 7 Januari 1965, dan bergabung kembali pada tanggal 28 September 1966. Indonesia tetap dinyatakan sebagai anggota yang ke-60, keanggotaan yang sama sejak bergabungnya Indonesia pada tanggal 28 September 1950. Selain PBB, Indonesia juga negara anggota dari organisasi ASEAN, KAA, APEC, OKI, G-20 dan sebentar lagi akan menjadi anggota OECD.
            """
            ),
            Country(country: "Malaysia", capital: "Kuala Lumpur", independence: "31 Agustus 1957", photos: [UIImage(named: "MalaysiaPhoto"), UIImage(named: "MalaysiaPhoto1"), UIImage(named: "MalaysiaPhoto2"), UIImage(named: "MalaysiaPhoto3"), UIImage(named: "MalaysiaPhoto4"), UIImage(named: "MalaysiaPhoto5")], flag: UIImage(named: "MalaysiaFlag"), semboyan: "Bersekutu Bertambah Mutu", nationalAnthem: "Negaraku", languages: "Melayu, Inggris", language: "Melayu", information: """
            Malaysia adalah sebuah negara federal yang terdiri dari tiga belas negeri (negara bagian) dan tiga wilayah federal di Asia Tenggara dengan luas 329.847 km persegi. Ibu kotanya adalah Kuala Lumpur, sedangkan Putrajaya menjadi pusat pemerintahan federal. Jumlah penduduk negara ini mencapai 30.697.000 jiwa pada tahun 2015. Negara ini dipisahkan ke dalam dua kawasan — Malaysia Barat dan Malaysia Timur — oleh Kepulauan Natuna, wilayah Indonesia di Laut Tiongkok Selatan. Malaysia berbatasan dengan Thailand, Indonesia, Singapura, Brunei, dan Filipina. Negara ini terletak di dekat khatulistiwa dan beriklim tropika. Kepala negara Malaysia adalah seorang Raja atau seorang Sultan yang dipilih secara bergiliran setiap 5 tahun sekali, hanya negeri-negeri (negara bagian) yang diperintah oleh Raja/Sultan saja yang diperbolehkan mengirimkan wakilnya untuk menjadi Raja Malaysia. Raja Malaysia biasanya memakai gelar Sri Paduka Baginda Yang di-Pertuan Agong. dan pemerintahannya dikepalai oleh seorang Perdana Menteri. Model pemerintahan Malaysia mirip dengan sistem parlementer Westminster.

            Malaysia sebagai negara federal tidak pernah ada sampai tahun 1963. Sebelumnya, sekumpulan koloni didirikan oleh Britania Raya pada akhir abad ke-18, dan bagian barat Malaysia modern terdiri dari beberapa kerajaan yang terpisah-pisah. Kumpulan wilayah jajahan itu dikenal sebagai Malaya Britania hingga pembubarannya pada 1946, ketika kumpulan itu disusun kembali sebagai Uni Malaya. Karena semakin meluasnya tentangan, kumpulan itu lagi-lagi disusun kembali sebagai Federasi Malaya pada tahun 1948 dan kemudian meraih kemerdekaan pada 31 Agustus 1957.

            Pada 16 September 1963 sesuai dengan Resolusi Majelis Umum PBB 1514 dalam proses dekolonialisasi, Singapura, Sarawak, Borneo Utara atau yang sekarang lebih dikenal sebagai Sabah berubah menjadi negara bagian dari federasi bentukan baru yang bernama Malaysia termasuk dengan Federasi Malaya. dan pada 9 Agustus 1965 Singapura kemudian dikeluarkan dari Malaysia dan menjadi negara merdeka yang bernama Republik Singapura. saat tahun-tahun awal pembentukan federasi baru terdapat pula tentangan dari Filipina dan konflik militer dengan Indonesia.

            Bangsa-bangsa di Asia Tenggara mengalami ledakan ekonomi dan menjalani perkembangan yang cepat di penghujung abad ke-20. Pertumbuhan yang cepat pada dasawarsa 1980-an dan 1990-an, rata-rata 8% dari tahun 1991 hingga 1997, telah mengubah Malaysia menjadi negara industri baru. Karena Malaysia adalah salah satu dari tiga negara yang menguasai Selat Malaka, perdagangan internasional berperan penting di dalam ekonominya. Pada suatu ketika, Malaysia pernah menjadi penghasil timah, karet dan minyak kelapa sawit di dunia. Industri manufaktur memiliki pengaruh besar bagi ekonomi negara ini. Malaysia juga dipandang sebagai salah satu dari 18 negara berkeanekaragaman hayati terbesar di dunia.

            Bangsa Melayu menjadi bagian terbesar dari populasi Malaysia. Terdapat pula Ras Tionghoa Malaysia dan India Malaysia yang cukup besar. Bahasa Melayu dan Islam masing-masing menjadi bahasa dan agama resmi negara.

            Malaysia adalah anggota perintis ASEAN dan turut serta di berbagai organisasi internasional, seperti PBB. Sebagai bekas jajahan Inggris, Malaysia juga menjadi anggota Negara-Negara Persemakmuran. Malaysia juga menjadi anggota D-8 (Developing-8), yakni sebuah kesepakatan untuk kerja sama pembangunan delapan negara anggotanya: Bangladesh, Indonesia, Iran, Malaysia, Mesir, Nigeria, Pakistan, dan Turki.
            """
            ),
            Country(country: "Singapura", capital: "Singapura", independence: "9 Agustus 1965", photos: [UIImage(named: "SingapuraPhoto")], flag: UIImage(named: "SingapuraFlag"), semboyan: "Majulah Singapura", nationalAnthem: "Majulah Singapura", languages: "Melayu, Inggris, Mandarin, Tamil", language: "Melayu", information: """
            Singapura (nama resmi: Republik Singapura) adalah sebuah negara pulau di lepas ujung selatan Semenanjung Malaya, 137 kilometer (85 mil) di utara khatulistiwa di Asia Tenggara. Negara ini terpisah dari Malaysia oleh Selat Johor di utara, dan dari Kepulauan Riau, Indonesia oleh Selat Singapura di selatan. Singapura adalah pusat keuangan terdepan ketiga di dunia dan sebuah kota dunia kosmopolitan yang memainkan peran penting dalam perdagangan dan keuangan internasional. Pelabuhan Singapura adalah satu dari lima pelabuhan tersibuk di dunia.

            Singapura memiliki sejarah imigrasi yang panjang. Penduduknya yang beragam berjumlah kira-kira 6 juta jiwa, terdiri dari Orang Tionghoa, Melayu, India, Arab, berbagai keturunan Asia, dan Kaukasoid. 42% penduduk Singapura adalah orang asing yang bekerja dan menuntut ilmu di sana. Pekerja asing membentuk 50% dari sektor jasa. Negara ini adalah yang terpadat kedua di dunia setelah Monako. A.T. Kearney menyebut Singapura sebagai negara paling terglobalisasi di dunia dalam Indeks Globalisasi tahun 2006.

            Sebelum merdeka tahun 1965, Singapura adalah pelabuhan dagang yang beragam dengan PDB per kapita $511, tertinggi ketiga di Asia Timur pada saat itu. Setelah merdeka, investasi asing langsung dan usaha pemerintah untuk industrialisasi berdasarkan rencana bekas Deputi Perdana Menteri Dr. Goh Keng Swee membentuk ekonomi Singapura saat ini.

            Economist Intelligence Unit dalam "Indeks Kualitas Hidup" menempatkan Singapura pada peringkat satu kualitas hidup terbaik di Asia dan kesebelas di dunia. Singapura memiliki cadangan devisa terbesar kesembilan di dunia. Negara ini juga memiliki angkatan bersenjata yang maju.
            Setelah PDB-nya berkurang -6.8% pada kuartal ke-4 tahun 2009, Singapura mendapatkan gelar pertumbuhan ekonomi tercepat di dunia, dengan pertumbuhan PDB 17.9% pada pertengahan pertama 2010.
            """
            )
        ]
    }
}
