{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program JumlahDeret;
uses crt;

var
  n, i, j, total : integer;

begin
  clrscr;
  
  write('n = '); readln(n);
  writeln;
  
  for i := n downto 1 do
  begin
    total := 0;
    for j := 1 to i do
    begin
      write(j);
      total := total + j;
      
      if j < i then
        write(' + ');
    end;
    writeln(' = ', total);
    writeln;
  end;
end.