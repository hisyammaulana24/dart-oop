
// 1. Class Mobil
class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil(this.merk, this.model, this.tahun);

  void display() {
    print('Mobil: $merk $model ($tahun)');
  }
}

// 2. Class Mahasiswa dengan nilai default
class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = 'Nama Default', this.nim = 'NIM0000'});

  void display() {
    print('Mahasiswa: $nama, NIM: $nim');
  }
}

// 3. Class Buku dengan parameterized constructor
class Buku {
  String judul;
  String pengarang;

  Buku(this.judul, this.pengarang);

  void display() {
    print('Buku: "$judul" oleh $pengarang');
  }
}

// 4. Class Segitiga dengan named constructor
class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // default constructor
  Segitiga(this.alas, this.tinggi, this.jenis);

  // named constructor untuk siku‑siku
  Segitiga.sikuSiku(double alas, double tinggi)
      : alas = alas,
        tinggi = tinggi,
        jenis = 'siku‑siku';

  // named constructor untuk sama sisi (alas==tinggi)
  Segitiga.samaSisi(double sisi)
      : alas = sisi,
        tinggi = sisi,
        jenis = 'sama sisi';

  void display() {
    double luas = 0.5 * alas * tinggi;
    print('Segitiga ($jenis): alas=$alas, tinggi=$tinggi, luas=$luas');
  }
}

// 5. Class Warna dengan constant constructor
class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void display() {
    print('Warna(R,G,B)=($red, $green, $blue)');
  }
}

void main() {
  print('--- Soal 1: Mobil ---');
  var mobil = Mobil('Toyota', 'Corolla', 2021);
  mobil.display();

  print('\n--- Soal 2: Mahasiswa ---');
  var mhs = Mahasiswa();
  mhs.display();

  print('\n--- Soal 3: Buku ---');
  var buku = Buku('Dart OOP Guide', 'Akhmad K. Zyen');
  buku.display();

  print('\n--- Soal 4: Segitiga ---');
  var t1 = Segitiga(3, 4, 'custom');
  t1.display();
  var t2 = Segitiga.sikuSiku(5, 2);
  t2.display();
  var t3 = Segitiga.samaSisi(6);
  t3.display();

  print('\n--- Soal 5: Warna ---');
  const merah = Warna(255, 0, 0);
  const hijau = Warna(0, 255, 0);
  const biru = Warna(0, 0, 255);
  [merah, hijau, biru].forEach((w) => w.display());
}
