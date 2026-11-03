{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program RataRata;
uses crt;

var
  n, i : integer;
  angka, total : real;

function hitungRataRata(jumlahData : integer; totalNilai : real) : real;
begin
  hitungRataRata := totalNilai / jumlahData;
end;

begin
  clrscr;
  
  write('Banyak Data : '); readln(n);
  
  total := 0;
  for i := 1 to n do
  begin
    write('Input angka ke-', i, ': '); readln(angka);
    total := total + angka;
  end;
  
  writeln;
  writeln('Rata-rata = ', hitungRataRata(n, total):0:2);
end.