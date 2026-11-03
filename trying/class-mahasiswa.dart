class Mahasiswa {
  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.prodi,
    this.ukm,
  });

  final String nama, nim, prodi;
  final String? ukm;

  String teknikInformatika() {
    return "Mata Kuliah yang diambil: Pemrograman Mobile, Pemrograman Web, Jaringan Komputer";
  }

  String bisnisDigital() {
    return "Mata Kuliah yang diambil: E-commerce, Digital Marketing, Business Analytics";
  }

  String manajemenRitel() {
    return "Mata Kuliah yang diambil: Manajemen Ritel, Pemasaran, Operasional Ritel";
  }

  String menentukanMataKuliah() {
    if (prodi == 'Teknik Informatika') {
      return teknikInformatika();
    } else if (prodi == 'Bisnis Digital') {
      return bisnisDigital();
    } else if (prodi == 'Manajemen Ritel') {
      return manajemenRitel();
    } else {
      return "Program studi tidak ada.";
    }
  }

  String greetings() {
    return "Halo, nama saya $nama, dengan NIM $nim, yang sedang mengambil program studi $prodi";
  }

  void tampilkanData() {
    print("Nama: $nama");
    print("NIM: $nim");
    print("Program Studi: $prodi");
    print(greetings());
    print(menentukanMataKuliah());
  }
}

void main() {
  // final dataMahasiswa = [
  //   Mahasiswa("Budi", "123456", "Teknik Informatika"),
  //   Mahasiswa("Ani", "654321", "Bisnis Digital"),
  //   Mahasiswa("Cici", "789012", "Manajemen Ritel"),
  // ];

  final dataMahasiswa = [
    Mahasiswa(nama: "Danu", nim: "12345", prodi: "Teknik Informatika", ukm: ""),
    Mahasiswa(
      nama: "Tirta",
      nim: "12345",
      prodi: "Manajemen Ritel",
      ukm: "KUAS",
    ),
    Mahasiswa(
      nama: "Cahyo",
      nim: "12345",
      prodi: "Computer Desain Multimedia",
      ukm: "",
    ),
  ];

  for (var M in dataMahasiswa) {
    print("\n");
    M.tampilkanData();
  }

  print("\n" + identical(dataMahasiswa[0], dataMahasiswa[0]).toString());
  print("\n" + identical(dataMahasiswa[0], dataMahasiswa[2]).toString());
}
