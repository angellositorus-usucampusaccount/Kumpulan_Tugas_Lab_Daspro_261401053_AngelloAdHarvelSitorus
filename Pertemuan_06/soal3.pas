{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program FaktorialRekursif;
uses crt;

var
  nilai : integer;

function faktorial(n : integer) : longint;
begin
  if n <= 1 then
    faktorial := 1
  else
    faktorial := n * faktorial(n - 1);
end;

begin
  clrscr;
  
  write('Nilai : '); readln(nilai);
  
  writeln('Hasil = ', faktorial(nilai));
end.