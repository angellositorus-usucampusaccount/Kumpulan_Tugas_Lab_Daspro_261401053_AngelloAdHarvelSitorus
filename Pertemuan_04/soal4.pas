{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program CekPrimaRange;
uses crt;

var
  i, j, faktor : integer;

begin
  clrscr;
  
  writeln('Bilangan Prima antara 1 - 50:');
  
  for i := 1 to 50 do
  begin
    faktor := 0;
    for j := 1 to i do
    begin
      if i mod j = 0 then
        faktor := faktor + 1;
    end;
    
    if faktor = 2 then
      write(i, ' ');
  end;
  writeln;
end.