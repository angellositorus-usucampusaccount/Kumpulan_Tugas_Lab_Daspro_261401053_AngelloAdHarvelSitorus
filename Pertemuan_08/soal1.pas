{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program HargaMakanan;

uses crt;

type
  TNama = string[50];
  PHarga = ^LongInt;
  PNama = ^TNama;

var
  nama: array[1..100] of TNama;
  harga: array[1..100] of LongInt;

  pHargaMahal, pHargaMurah: PHarga;
  pNamaMahal, pNamaMurah: PNama;

  i, n: integer;

begin
  clrscr;

  write('Masukkan jumlah makanan: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln;
    writeln('Makanan ke-', i);

    write('Nama makanan : ');
    readln(nama[i]);

    write('Harga makanan: Rp ');
    readln(harga[i]);
  end;

  pHargaMahal := @harga[1];
  pHargaMurah := @harga[1];

  pNamaMahal := @nama[1];
  pNamaMurah := @nama[1];

  for i := 2 to n do
  begin
    if harga[i] > pHargaMahal^ then
    begin
      pHargaMahal := @harga[i];
      pNamaMahal := @nama[i];
    end;

    if harga[i] < pHargaMurah^ then
    begin
      pHargaMurah := @harga[i];
      pNamaMurah := @nama[i];
    end;
  end;

  writeln;
  writeln('=== HASIL PENCARIAN ===');

  writeln;
  writeln('Makanan Termahal');
  writeln('Nama  : ', pNamaMahal^);
  writeln('Harga : Rp ', pHargaMahal^);

  writeln;
  writeln('Makanan Termurah');
  writeln('Nama  : ', pNamaMurah^);
  writeln('Harga : Rp ', pHargaMurah^);

end.