{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program CekBilanganPrima;
uses crt;

var
  n : integer;

function isPrima(angka : integer) : boolean;
var
  i, faktor : integer;
begin
  if angka < 2 then
  begin
    isPrima := false;
    exit;
  end;
  
  faktor := 0;
  for i := 1 to angka do
  begin
    if angka mod i = 0 then
      faktor := faktor + 1;
  end;
  
  if faktor = 2 then
    isPrima := true
  else
    isPrima := false;
end;

begin
  clrscr;
  
  write('Masukkan Bilangan : '); readln(n);
  
  if isPrima(n) then
    writeln('Prima')
  else
    writeln('Non-Prima');
end.