{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program CekTahunKabisat;
uses crt;

var
  tahun : integer;

begin
  clrscr;
  
  write('Masukkan Tahun : '); readln(tahun);
  
  {Operasi Kondisi}
  if ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) or (tahun mod 400 = 0) then
    writeln(tahun, ' adalah Tahun Kabisat')
  else
    writeln(tahun, ' bukan Tahun Kabisat');
end.