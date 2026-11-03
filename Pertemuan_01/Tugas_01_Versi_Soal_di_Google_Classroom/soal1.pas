{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program BukuFavorit;

uses crt;

var
  judul, penulis, genre : string;
  tahun : integer;

begin
  clrscr;
  write('Masukkan Judul Buku: '); readln(judul);
  write('Masukkan Nama Penulis: '); readln(penulis);
  write('Masukkan Tahun Terbit: '); readln(tahun);
  write('Masukkan Genre Buku: '); readln(genre);
  
  writeln;
  writeln('Buku favorit saya adalah ', judul, ' karangan ', penulis, '. Buku bergenre ', genre, ' ini diterbitkan pada tahun ', tahun, '. Sangat direkomendasikan!');
end.