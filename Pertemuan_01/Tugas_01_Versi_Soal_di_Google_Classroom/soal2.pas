{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program SpesifikasiLaptop;

uses crt;

var
  merk, ram, prosesor : string;

begin
  clrscr;
  write('Merk : '); readln(merk);
  write('RAM : '); readln(ram);
  write('Prosesor : '); readln(prosesor);
  
  writeln;
  writeln('Spesifikasi Perangkat: ', merk, ' dengan prosesor ', prosesor, ' dan memori RAM ', ram, '.');
end.