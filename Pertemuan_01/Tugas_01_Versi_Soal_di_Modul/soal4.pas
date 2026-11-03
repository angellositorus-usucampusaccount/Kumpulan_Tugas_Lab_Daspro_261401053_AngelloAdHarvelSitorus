{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program AlamatLengkap;
uses crt;

var
  jalan, kota : string;
  no, kodepos : LongInt; 
  {Jika No dan Kode Pos ingin diinput sebagai teks, bisa gunakan tipe string}
  
begin
  clrscr;
  
  write('Jalan : '); readln(jalan);
  write('No : '); readln(no);
  write('Kota : '); readln(kota);
  write('Kode Pos : '); readln(kodepos);
  
  writeln;
  writeln('Alamat: Jalan ', jalan, ' No. ', no, ' ', kota, ' ', kodepos);
end.