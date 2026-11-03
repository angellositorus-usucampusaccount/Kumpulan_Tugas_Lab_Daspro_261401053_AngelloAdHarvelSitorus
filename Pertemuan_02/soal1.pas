{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program HitungGajiKaryawan;
uses crt;

var
  nama : string;
  hariLembur, hariTidakBekerja : integer;
  gajiPokok, gajiLembur, potonganGaji, gajiTotal : real;

begin
  clrscr;
  
  write('Nama Karyawan        : '); readln(nama);
  write('Gaji Pokok           : '); readln(gajiPokok);
  write('Lembur (hari)        : '); readln(hariLembur);
  write('Tidak Bekerja (hari) : '); readln(hariTidakBekerja);
  
  {Proses Perhitungan}
  gajiLembur := 150000 * hariLembur;
  potonganGaji := 30000 * hariTidakBekerja;
  gajiTotal := gajiPokok + gajiLembur - potonganGaji;
  
  writeln;
  writeln('Gaji Total : Rp ', gajiTotal:0:0);
end.