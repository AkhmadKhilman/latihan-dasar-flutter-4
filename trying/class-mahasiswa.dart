class Mahasiswa {
  Mahasiswa(this.nama, this.nim, this.prodi);

  final String nama, nim, prodi;

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
  final dataMahasiswa = [
    Mahasiswa('Budi', '123456)', 'Teknik Informatika'),
    Mahasiswa('Ani', '654321', 'Bisnis Digital'),
    Mahasiswa('Cici', '789012', 'Manajemen Ritel'),
  ];

  for (var M in dataMahasiswa) {
    print("\n");
    M.tampilkanData();
  }

  print("\n" + identical(dataMahasiswa[0], dataMahasiswa[0]).toString());
  print("\n" + identical(dataMahasiswa[0], dataMahasiswa[2]).toString());
}
