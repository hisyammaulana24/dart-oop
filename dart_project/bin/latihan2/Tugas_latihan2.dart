// 1. Class induk Hewan dan subclass Kucing
class Hewan {
  String nama;
  Hewan(this.nama);

  void suara() {
    print('$nama bersuara…');
  }
}

class Kucing extends Hewan {
  String jenisBulu;
  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print('$nama (bulu: $jenisBulu) berkata: Meong!');
  }
}

// 2. RekeningBank dengan encapsulation
class RekeningBank {
  double _saldo = 0.0;            // private

  double get saldo => _saldo;     // hanya baca dari luar

  void setor(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('>> Setor: \$${jumlah.toStringAsFixed(2)}, saldo = \$${_saldo.toStringAsFixed(2)}');
    }
  }

  void tarik(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('<< Tarik: \$${jumlah.toStringAsFixed(2)}, saldo = \$${_saldo.toStringAsFixed(2)}');
    }
  }
}

// 3. BangunDatar dan override hitungLuas
class BangunDatar {
  double hitungLuas() => 0.0;
}

class Persegi extends BangunDatar {
  double sisi;
  Persegi(this.sisi);

  @override
  double hitungLuas() => sisi * sisi;
}

class Segitiga extends BangunDatar {
  double alas, tinggi;
  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() => 0.5 * alas * tinggi;
}

// 4. Abstract class Bentuk dan subclass Lingkaran
abstract class Bentuk {
  double hitungLuas();
}

class Lingkaran extends Bentuk {
  double radius;
  Lingkaran(this.radius);

  @override
  double hitungLuas() => 3.14159 * radius * radius;
}

void main() {
  print('=== Soal 1: Hewan & Kucing ===');
  var k = Kucing('Mimi', 'panjang');
  k.suara();
  print('');

  print('=== Soal 2: RekeningBank ===');
  var rek = RekeningBank();
  rek.setor(500);
  rek.tarik(150);
  rek.setor(200);
  print('Saldo akhir: \$${rek.saldo.toStringAsFixed(2)}\n');

  print('=== Soal 3: BangunDatar ===');
  BangunDatar p = Persegi(4);
  BangunDatar t = Segitiga(6, 3);
  print('Luas Persegi (sisi=4): ${p.hitungLuas()}');
  print('Luas Segitiga (alas=6, tinggi=3): ${t.hitungLuas()}\n');

  print('=== Soal 4: Abstract Bentuk ===');
  Bentuk ling = Lingkaran(5);
  print('Luas Lingkaran (r=5): ${ling.hitungLuas()}');
}
