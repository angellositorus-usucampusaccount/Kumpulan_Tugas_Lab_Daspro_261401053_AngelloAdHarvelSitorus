{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program PolaBelahKetupat;
uses crt;

var
  i, j, spasi : integer;

begin
  clrscr;
  
  for i := 1 to 4 do
  begin
    for spasi := 1 to 4 - i do
      write('  ');
    for j := 1 to (2 * i - 1) do
      write('* ');
    writeln;
  end;
  
  for i := 3 downto 1 do
  begin
    for spasi := 1 to 4 - i do
      write('  ');
    for j := 1 to (2 * i - 1) do
      write('* ');
    writeln;
  end;
  
end.