{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program PengurutanNilaiUASMahasiswa;

uses crt;

var
    DataNilai: array[1..10] of integer;
    n, i, j, temp: integer;

begin
    clrscr;
    writeln('===== REKAP NILAI UAS MAHASISWA =====');
    writeln('Selamat pagi semuanya.');
    writeln('Hari ini Bapak mau mengurutkan nilai UAS dari maksimal 10 mahasiswa.');
    repeat
        write('Ada berapa orang yang mau ? '); readln(n);
        if (n < 1) or (n > 10) then
        begin
            writeln('Kamu ini bagaimana?? Range angka harus 1-10!');
            writeln;
        end;
    until (n > 0) and (n < 11);

    writeln;
    writeln('Sekarang sebutkan nilai kamu ya:');
    for i := 1 to n do 
    begin
        write('Nilai Mahasiswa ke-', i, ': '); readln(DataNilai[i]);
    end;

    for i := 1 to n - 1 do
    begin
        for j :=1 to n - 1 do
        begin
            if DataNilai[j] > DataNilai[j + 1] then
                begin
                    temp := DataNilai[j];
                    DataNilai[j] := DataNilai[j + 1];
                    DataNilai[j + 1] := temp;
                end;
        end;
    end;

    writeln;
    writeln('Berikut adalah urutan nilai UAS terendah hingga tertinggi:');
    for i := 1 to n do
    begin
        write(DataNilai[i]:5);
    end;
end.