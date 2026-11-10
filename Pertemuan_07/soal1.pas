{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program BiodataMahasiswa;

uses crt;

type
  TLahir = record
    tanggal, bulan : integer;
    tahun : LongInt;
  end;

  TMahasiswa = record
    nama : string[25];
    nim : string[20];
    alamat : string[50];
    no_ponsel : string[15];
    tempat_lahir : string[50];
    tanggal_lahir : TLahir;
  end;

var
  data : array[1..20] of TMahasiswa;
  i, n: integer;

begin
  clrscr;
  writeln('=====INPUT BIODATA MAHASISWA=====');
  repeat
    write('Banyak Mahasiwa (maks. 20) : '); readln(n);
    if (n < 0) or (n > 20) then
    begin
      writeln('Range Angka 0-20! Ulangi Lagi...');
      writeln;
    end;
  until (n >= 0) and (n <= 20);

  clrscr;
  writeln('=====INPUT BIODATA MAHASISWA=====');
  
  for i := 1 to n do 
  begin
    writeln;
    writeln('Masukkan Data  Mahasiswa ke-', i);

    with data[i] do
    begin
      write('Nama : '); readln(nama);
      write('NIM : '); readln(nim);
      write('Alamat : '); readln(alamat);
      write('Nomor Ponsel : '); readln(no_ponsel);
      write('Tempat Lahir : '); readln(tempat_lahir);
    end;

    with data[i].tanggal_lahir  do 
    begin
      writeln('Tanggal Lahir:');
      write('- Tanggal : '); readln(tanggal);
      write('- Bulan : '); readln(bulan);
      write('- Tahun : '); readln(tahun);
    end;
  end;

  clrscr;
  writeln('=====DATA BIODATA MAHASISWA=====');

  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    writeln('------------------------------');

    with data[i] do
    begin
      writeln('Nama          : ', nama);
      writeln('NIM           : ', nim);
      writeln('Alamat        : ', alamat);
      writeln('Nomor HP      : ', no_ponsel);
      writeln('Tempat Lahir  : ', tempat_lahir);

      with tanggal_lahir do
        writeln('Tanggal Lahir : ', tanggal, '-', bulan, '-', tahun);
    end;
  end;
end.