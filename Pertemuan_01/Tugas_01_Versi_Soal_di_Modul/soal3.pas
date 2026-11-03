{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program BiodataPribadi;
uses crt;

var
  nama, nim, kom, alamat : string;
  
begin
  clrscr;   
  
  write('Masukkan Nama Anda : '); readln(nama);
  write('Masukkan NIM Anda : '); readln(nim);
  write('Masukkan Kom Anda : '); readln(kom);
  write('Masukkan Alamat Anda : '); readln(alamat);
  
  writeln;
  writeln('Hallo, Nama saya ', nama, ', NIM saya ', nim, ', saya di kom ', kom, ', alamat saya di ', alamat, '. Salam Kenal Semua!');
end.