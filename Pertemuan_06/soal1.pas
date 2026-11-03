{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program LuasSegitiga;
uses crt;

var
  alas, tinggi : real;

function hitungLuas(a, t : real) : real;
begin
  hitungLuas := (a * t) / 2;
end;

begin
  clrscr;
  
  write('Alas   = '); readln(alas);
  write('Tinggi = '); readln(tinggi);
  
  writeln('Luas Segitiga = ', hitungLuas(alas, tinggi):0:0);
end.