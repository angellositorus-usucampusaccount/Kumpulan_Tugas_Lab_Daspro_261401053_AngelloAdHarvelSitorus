{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program HasilStudiMahasiswa;

uses crt;

type
  TMatkul = record
    nama_matkul : string[40];
    sks : integer;
    nilai : string[2];
    skor : real;
  end;

  TMahasiswa = record
    nama : string[25];
    nim : string[20];
    jumlah_matkul : integer;
    matkul : array[1..10] of TMatkul;
  end;

var
  data : array[1..20] of TMahasiswa;
  i, j, n : integer;
  total_sks : integer;
  total_skor, ip : real;
  bobot : real;
  nilai_input : string[2];

{ Fungsi konversi nilai menjadi bobot }
function BobotNilai(nilai : string): real;
begin
  if nilai = 'A' then
    BobotNilai := 4
  else if nilai = 'B+' then
    BobotNilai := 3.5
  else if nilai = 'B' then
    BobotNilai := 3
  else if nilai = 'C+' then
    BobotNilai := 2.5
  else if nilai = 'C' then
    BobotNilai := 2
  else if nilai = 'D' then
    BobotNilai := 1
  else if nilai = 'E' then
    BobotNilai := 0
  else
    BobotNilai := -1;
end;

begin
  clrscr;

  writeln('===== INPUT HASIL STUDI MAHASISWA =====');

  { Input jumlah mahasiswa }
  repeat
    write('Banyak Mahasiswa (maks. 20) : ');
    readln(n);

    if (n < 1) or (n > 20) then
    begin
      writeln('Jumlah harus 1-20! Ulangi lagi...');
      writeln;
    end;
  until (n >= 1) and (n <= 20);

  { Proses input data mahasiswa }
  for i := 1 to n do
  begin
    clrscr;
    writeln('===== DATA MAHASISWA KE-', i, ' =====');

    with data[i] do
    begin
      write('Nama : ');
      readln(nama);

      write('NIM : ');
      readln(nim);

      repeat
        write('Jumlah Mata Kuliah (maks. 10) : ');
        readln(jumlah_matkul);

        if (jumlah_matkul < 1) or (jumlah_matkul > 10) then
        begin
          writeln('Jumlah harus 1-10! Ulangi lagi...');
          writeln;
        end;
      until (jumlah_matkul >= 1) and (jumlah_matkul <= 10);

      { Input mata kuliah }
      for j := 1 to jumlah_matkul do
      begin
        writeln;
        writeln('Mata Kuliah ke-', j);

        with matkul[j] do
        begin
          write('Nama Mata Kuliah : ');
          readln(nama_matkul);

          write('Jumlah SKS : ');
          readln(sks);

          { Input dan validasi nilai }
          repeat
            write('Nilai (A, B+, B, C+, C, D, E) : ');
            readln(nilai);

            bobot := BobotNilai(nilai);

            if bobot < 0 then
            begin
              writeln('Nilai tidak valid! Ulangi lagi...');
            end;
          until bobot >= 0;

          { Menghitung skor }
          skor := sks * bobot;
        end;
      end;
    end;
  end;

  { Proses menampilkan hasil studi }
  for i := 1 to n do
  begin
    clrscr;

    total_sks := 0;
    total_skor := 0;

    writeln('Nama : ', data[i].nama);
    writeln('NIM  : ', data[i].nim);

    writeln('---------------------------------------------------------------');
    writeln('| No | Mata Kuliah          | SKS | Nilai | Skor  |');
    writeln('---------------------------------------------------------------');

    { Menampilkan mata kuliah dan menghitung total }
    for j := 1 to data[i].jumlah_matkul do
    begin
      with data[i].matkul[j] do
      begin
        writeln('| ', j:2,
                ' | ', nama_matkul:20,
                ' | ', sks:3,
                ' | ', nilai:5,
                ' | ', skor:5:1, ' |');

        total_sks := total_sks + sks;
        total_skor := total_skor + skor;
      end;
    end;

    writeln('---------------------------------------------------------------');

    { Menghitung IP }
    if total_sks > 0 then
      ip := total_skor / total_sks
    else
      ip := 0;

    writeln('| TOTAL', '                                      | ', total_skor:5:1, ' |');
    writeln('---------------------------------------------------------------');
    writeln('Jumlah SKS : ', total_sks);
    writeln('IP         : ', ip:0:2);

    { Menunggu tombol sebelum menampilkan data berikutnya }
    if i < n then
    begin
      writeln;
      writeln('Tekan sembarang tombol untuk melihat data');
      writeln('selanjutnya...');
      readkey;
    end;
  end;

  writeln;
  writeln('Seluruh data hasil studi telah ditampilkan.');
  readkey;
end.
