{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program PolaBintangAngka;
uses crt;

var
  i, j : integer;

begin
  clrscr;
  
  for i := 1 to 5 do
  begin
    for j := 1 to i do
    begin
      if i mod 2 <> 0 then
        write('* ')
      else
        write(i, ' ');
    end;
    writeln;
  end;
end.