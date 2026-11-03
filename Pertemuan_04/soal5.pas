{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program PerkalianFilter;
uses crt;

var
  i : integer;

begin
  clrscr;
  
  writeln('Deret perkalian 1 s.d 100 (tanpa kelipatan 3 & 5):');
  
  for i := 1 to 100 do
  begin
    if (i mod 3 = 0) or (i mod 5 = 0) then
      continue;
      
    write(i, ' ');
  end;
  writeln;
end.