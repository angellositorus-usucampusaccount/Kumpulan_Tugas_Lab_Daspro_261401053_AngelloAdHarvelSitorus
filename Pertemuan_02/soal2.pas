{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program HitungNilaiAkhir;
uses crt;

var
  nama : string;
  nilaiKeaktifan, nilaiTugas, nilaiUjian : integer;
  murniKeaktifan, murniTugas, murniUjian, nilaiAkhir : real;

begin
  clrscr;
  
  write('Nama Mahasiswa  : '); readln(nama);
  write('Nilai Keaktifan : '); readln(nilaiKeaktifan);
  write('Nilai Tugas     : '); readln(nilaiTugas);
  write('Nilai Ujian     : '); readln(nilaiUjian);
  
  {Proses Perhitungan}
  murniKeaktifan := nilaiKeaktifan * 0.20;
  murniTugas := nilaiTugas * 0.35;
  murniUjian := nilaiUjian * 0.45;
  
  nilaiAkhir := murniKeaktifan + murniTugas + murniUjian;
  
  writeln;
  write('Nilai Akhir : ', nilaiAkhir:0:2);
end.