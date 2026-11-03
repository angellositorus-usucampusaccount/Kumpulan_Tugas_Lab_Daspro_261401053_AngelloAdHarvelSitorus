{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program CekStatusSuhu;
uses crt;

var
  suhu : real;

begin
  clrscr;
  
  write('Masukkan Suhu Tubuh : '); readln(suhu);
  
  {Operasi Kondisi}
  if suhu < 36 then
    writeln('Status : Suhu Rendah')
  else if (suhu >= 36) and (suhu <= 37.5) then
    writeln('Status : Suhu Normal')
  else
    writeln('Status : Demam');
end.