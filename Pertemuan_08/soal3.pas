{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program AlamatVariabel;

uses crt;

var
  angka: integer;
  nilai: real;
  huruf: char;
  nama: string[30];
  status: boolean;

begin
  clrscr;

  angka := 100;
  nilai := 85.5;
  huruf := 'A';
  nama := 'Angello';
  status := true;

  writeln('=== ALAMAT MEMORI VARIABEL ===');
  writeln;

  writeln('Variabel angka  : ', PtrUInt(@angka));
  writeln('Variabel nilai  : ', PtrUInt(@nilai));
  writeln('Variabel huruf  : ', PtrUInt(@huruf));
  writeln('Variabel nama   : ', PtrUInt(@nama));
  writeln('Variabel status : ', PtrUInt(@status));

end.