{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program DuaPointer;

uses crt;

var
  angka: integer;

  ptr1, ptr2: ^integer;

begin
  clrscr;

  angka := 10;

  ptr1 := @angka;
  ptr2 := @angka;

  writeln('=== KONDISI AWAL ===');
  writeln('Nilai angka : ', angka);
  writeln('Nilai ptr1^ : ', ptr1^);
  writeln('Nilai ptr2^ : ', ptr2^);

  ptr1^ := 50;

  writeln;
  writeln('=== SETELAH PTR1 MENGUBAH NILAI ===');
  writeln('Nilai angka : ', angka);
  writeln('Nilai ptr1^ : ', ptr1^);
  writeln('Nilai ptr2^ : ', ptr2^);

end.
