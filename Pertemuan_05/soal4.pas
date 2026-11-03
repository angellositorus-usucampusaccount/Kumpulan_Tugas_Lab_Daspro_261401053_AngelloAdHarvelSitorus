{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program KelulusanMahasiswa;

uses crt;

var
    DataMahasiswa: array[1..5, 1..4] of integer;
    i, j, n: integer;
    rerata: real;

begin
    clrscr;
    writeln('===== PROGRAM KELULUSAN MAHASISWA =====');
    writeln;

    { Input jumlah mahasiswa }
    repeat
        write('Ada berapa banyak mahasiswa (maks. 5)? ');
        readln(n);

        if (n < 1) or (n > 5) then
        begin
            writeln('Range input harus di antara 1-5 yaw ^_^');
            writeln;
        end;
    until (n >= 1) and (n <= 5);

    writeln;

    { Input nilai setiap mahasiswa }
    for i := 1 to n do
    begin
        writeln('=== Nilai Mahasiswa ke-', i, ' ===');

        write('Nilai Tugas: '); readln(DataMahasiswa[i,1]);
        write('Nilai Kuis: '); readln(DataMahasiswa[i,2]);
        write('Nilai UTS: '); readln(DataMahasiswa[i,3]);
        write('Nilai UAS: '); readln(DataMahasiswa[i,4]);

        writeln;
    end;

    { Menampilkan nilai, rata-rata, dan status kelulusan }
    writeln('===== HASIL KELULUSAN MAHASISWA =====');

    for i := 1 to n do
    begin
        rerata := (DataMahasiswa[i,1] + DataMahasiswa[i,2] + DataMahasiswa[i,3] + DataMahasiswa[i,4]) / 4;

        writeln;
        writeln('Mahasiswa ke-', i);
        writeln('Nilai Rata-rata: ', rerata:0:2);

        if rerata >= 70 then
        begin
            writeln('Keterangan: LULUS');
        end
        else
        begin
            writeln('Keterangan: TIDAK LULUS');
        end;
    end;

    writeln;
    writeln('Program selesai. Terima kasih!');
end.