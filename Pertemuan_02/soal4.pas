{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program KonversiSuhu;
uses crt;

var
  celsius, fahrenheit, kelvin, reamur : real;

begin
  clrscr;
  
  write('Masukkan Suhu (Celsius) : '); readln(celsius);
  
  {Proses Perhitungan}
  fahrenheit := (celsius * 9 / 5) + 32;
  kelvin := celsius + 273.15;
  reamur := celsius * 4 / 5;
  
  writeln;
  writeln('Suhu dalam Fahrenheit : ', fahrenheit:0:2);
  writeln('Suhu dalam Kelvin     : ', kelvin:0:2);
  writeln('Suhu dalam Reamur     : ', reamur:0:2);
end.