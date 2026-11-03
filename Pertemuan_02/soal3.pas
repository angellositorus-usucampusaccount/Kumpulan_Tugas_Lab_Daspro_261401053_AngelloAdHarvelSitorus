{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program LuasKelilingLapangan;
uses crt;

var
  panjang, lebar, luas, keliling : real;

begin
  clrscr;
  
  write('Panjang : '); readln(panjang);
  write('Lebar   : '); readln(lebar);
  
  {Proses Perhitungan}
  luas := panjang * lebar;
  keliling := 2 * (panjang + lebar);
  
  writeln;
  writeln('Luas lapangan     : ', luas:0:0, ' Meter');
  writeln('Keliling lapangan : ', keliling:0:0, ' Meter');
end.