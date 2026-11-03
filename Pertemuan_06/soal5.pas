{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program DeretAngka;
uses crt;

var
  n : integer;

procedure tampilDeret(jumlahSuku, jenisDeret : integer);
var
  i, a, b, c : integer;
begin
  if jenisDeret = 1 then
  begin
    a := 1; b := 1;
    for i := 1 to jumlahSuku do
    begin
      write(a, ' ');
      c := a + b;
      a := b;
      b := c;
    end;
  end
  else if jenisDeret = 2 then
  begin
    a := 1;
    for i := 1 to jumlahSuku do
    begin
      write(a, ' ');
      a := a * 2;
    end;
  end
  else if jenisDeret = 3 then
  begin
    for i := 1 to jumlahSuku do
      write(i * i, ' ');
  end
  else if jenisDeret = 4 then
  begin
    for i := 1 to jumlahSuku do
      write(i * (i + 1), ' ');
  end;
  writeln;
end;

begin
  clrscr;
  
  write('Input : '); readln(n);
  writeln;
  
  tampilDeret(n, 1);
  tampilDeret(n, 2);
  tampilDeret(n, 3);
  tampilDeret(n, 4);
end.