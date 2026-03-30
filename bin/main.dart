import 'dart:io';

void main() {
  print("PROGRAM BILANGAN PRIMA");
  print('Masukkan nilai N:');
  int n = int.parse(stdin.readLineSync()!);

  if (n < 2) {
    print('Tidak ada bilangan prima kurang dari 2.');
  } else {
    print('\nBilangan prima dari 1 sampai $n:');

    for (int angka = 2; angka <= n; angka++) {
      bool isPrima = true;

      for (int i = 2; i * i <= angka; i++) {
        if (angka % i == 0) {
          isPrima = false;
          break;
        }
      }

      if (isPrima) {
        print(angka);
      }
    }

    print('\nSelesai!');
  }
}