{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program UrutkanAngka;
uses crt;

var
  a, b, c, temp : integer;

begin
  clrscr;
  
  write('Masukkan Nilai 1 : '); readln(a);
  write('Masukkan Nilai 2 : '); readln(b);
  write('Masukkan Nilai 3 : '); readln(c);
  
  {Proses Pengurutan Descending}
  if a < b then
  begin
    temp := a; a := b; b := temp;
  end;
  
  if a < c then
  begin
    temp := a; a := c; c := temp;
  end;
  
  if b < c then
  begin
    temp := b; b := c; c := temp;
  end;
  
  writeln;
  writeln('Urutan : ', a, ' ', b, ' ', c);
end.