import 'dart:io';

void tampianMenu() {
  print('====================================');
  print('=========== BANK QRUT  ============');
  print('====================================');
  print('SELAMAT DATANG DI BANK QRUT');
  print('1. cek saldo');
  print('2. tarik tunai');
  print('3. setor tunai');
  print('4. keluar');
}

void main() {
  //   var jalan = true;

  //   int hargaNovel = 45000;
  //   int hargaKomik = 30000;

  //   int totalbayar = 0;

  //   print('pilihan menu');
  //   print(' 1. Buku Novel');
  //   print(' 2. buku komik');
  //   print(' 3. selesai dan bayar');
  //   print(' 4. keluar');
  //   while (jalan) {
  //     stdout.write('masukkan pilihan menu : ');
  //     int? tampilan = int.parse(stdin.readLineSync()!);

  //     switch (tampilan) {
  //       case 1:
  //         stdout.write('masukkan jumlah buku novel : ');
  //         int? jumlahNovel = int.parse(stdin.readLineSync()!);
  //         int totalnovel = jumlahNovel * hargaNovel;
  //         print('total harga buku novel : $totalnovel');
  //         totalbayar += totalnovel;
  //         break;
  //       case 2:
  //         stdout.write('masukkan jumlah buku komik : ');
  //         int? jumlahKomik = int.parse(stdin.readLineSync()!);
  //         int totalkomik = jumlahKomik * hargaKomik;
  //         print('total harga buku komik : $totalkomik');
  //         totalbayar += totalkomik;
  //         break;
  //       case 3:
  //         print('total belanjaan anda : $totalbayar');
  //         if (totalbayar == 0) {
  //           print('anda belum membeli apapun');
  //           jalan = false;
  //           break;
  //         }
  //         int uangbayar = 0;
  //         while (uangbayar < totalbayar) {
  //           stdout.write('masukkan uang yang dibayarkan : ');
  //           int uangbayar = int.parse(stdin.readLineSync()!);

  //           if (uangbayar < totalbayar) {
  //             print('uang yang dibayarkan kurang');
  //           } else {
  //             int kembalian = uangbayar - totalbayar;
  //             print('uang yang dibayarkan : $uangbayar');
  //             print('kembalian anda : $kembalian');
  //             print('terima kasih telah berbelanja');

  //             break;
  //           }
  //         }
  //         case 4:
  //         print('terima kasih telah berbelanja');
  //         jalan = false;
  //         break;
  //     }
  //   }
  var jalan = true;
  int saldo = 500000;
  while (jalan) {
    tampianMenu();

    stdout.write('masukkan pilihan menu : ');
    int? pilihan = int.tryParse(stdin.readLineSync()!);

    //menggunakan perulangan if-else
    //   if (pilhan == 1) {
    //     print('saldo anda : $saldo');

    //     while (jalan) {
    //       stdout.write('apakah anda ingin melakukan transaksi lagi (y/n) : ');
    //       String? transaksi = stdin.readLineSync();
    //       if (transaksi == 'y') {
    //         tampianMenu();
    //         stdout.write('masukkan pilihan menu : ');
    //         pilhan = int.tryParse(stdin.readLineSync()!);
    //         if (pilhan == 1) {
    //           print('saldo anda : $saldo');
    //         } else if (pilhan == 2) {
    //           stdout.write('masukkan jumlah uang yang ingin ditarik :');
    //           int? tariktunai = int.tryParse(stdin.readLineSync()!);
    //           if (tariktunai != null) {
    //             if (tariktunai > saldo) {
    //               print('saldo anda tidak cukup');
    //             } else {
    //               saldo -= tariktunai;
    //               print('sisa saldo anda : $saldo');
    //             }
    //           }
    //         } else if (pilhan == 3) {
    //           stdout.write('masukkan jumlah uang yang disetor :');
    //           int? setortunai = int.tryParse(stdin.readLineSync()!);
    //           if (setortunai != null) {
    //             saldo += setortunai;
    //             print('sisa saldo anda : $saldo');
    //           }
    //         }
    //       } else if (transaksi == 'n') {
    //         jalan = false;
    //       }
    //     }

    switch (pilihan) {
      case 1:
        print('saldo anda : $saldo');
        while (true) {
          stdout.write('apakah anda ingin melakukan transaksi lagi (y/n) : ');
          String? transaksi = stdin.readLineSync();
          if (transaksi == 'y') {
            break;
          } else if (transaksi == 'n') {
            print('terimakasih telah menggunakan layanan ini');
            jalan = false;
            break;
          } else {
            print('masukan anda tidak valid'!!!!!!);
          }
        }
        break;

      case 2:
        stdout.write('masukkan jumlah uang yang ingin ditarik :');
        int? tariktunai = int.tryParse(stdin.readLineSync()!);
        if (tariktunai == null) {
          print('jumlah uang yang dimasukkan tidak valid');
        } else if (tariktunai > saldo) {
          print('saldo anda tidak cukup');
        } else {
          saldo -= tariktunai;
          print('sisa saldo anda : $saldo');

          stdout.write('apakah anda ingin melakukan transaksi lagi (y/n) : ');
          String? transaksi = stdin.readLineSync();
          if (transaksi == 'y') {
            break;
          } else if (transaksi == 'n') {
            print('terimakasih telah menggunakan layanan ini');
            jalan = false;
            break;
          } else {
            print('masukan anda tidak valid'!!!!!!);
          }
        }
        break;

      case 3:
        stdout.write('masukkan jumlah uang yang disetor :');
        int? setortunai = int.tryParse(stdin.readLineSync()!);
        if (setortunai == null) {
          print('jumlah uang yang dimasukkan tidak valid');
        } else {
          saldo += setortunai;
          print('sisa saldo anda : $saldo');

          stdout.write('apakah anda ingin melakukan transaksi lagi (y/n) : ');
          String? transaksi = stdin.readLineSync();
          if (transaksi == 'y') {
            break;
          } else if (transaksi == 'n') {
            print('terimakasih telah menggunakan layanan ini');
            jalan = false;
            break;
          } else {
            print('masukan anda tidak valid'!!!!!!);
          }
        }
        break;

      case 4:
        print('terimakasih sudah menggunakan layanan');
        jalan = false;
        break;
    }
  }
}
