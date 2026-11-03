{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program PenjumlahanMatriks;

uses crt;

var
    A, B, C: array[1..5, 1..5] of integer;
    barisA, kolomA, barisB, kolomB: integer;
    i, j: integer;

begin
    clrscr;
    writeln('===== PENJUMLAHAN 2 MATRIKS =====');
    writeln;

    { Baris Matriks A }
    repeat
        write('Jumlah baris matriks A (1-5): ');
        readln(barisA);

        if (barisA < 1) or (barisA > 5) then
        begin
            writeln('Range Baris Harus di antara 1-5!');
            writeln;
        end;
    until (barisA > 0) and (barisA < 6);

    { Kolom Matriks A }
    repeat
        write('Jumlah kolom matriks A (1-5): ');
        readln(kolomA);

        if (kolomA < 1) or (kolomA > 5) then
        begin
            writeln('Range Kolom Harus di antara 1-5!');
            writeln;
        end;
    until (kolomA > 0) and (kolomA < 6);

    writeln;

    { Baris Matriks B }
    repeat
        write('Jumlah baris matriks B (1-5): ');
        readln(barisB);

        if (barisB < 1) or (barisB > 5) then
        begin
            writeln('Range Baris Harus di antara 1-5!');
            writeln;
        end;
    until (barisB > 0) and (barisB < 6);

    { Kolom Matriks B }
    repeat
        write('Jumlah kolom matriks B (1-5): ');
        readln(kolomB);

        if (kolomB < 1) or (kolomB > 5) then
        begin
            writeln('Range Kolom Harus di antara 1-5!');
            writeln;
        end;
    until (kolomB > 0) and (kolomB < 6);

    writeln;

    { Cek apakah matriks dapat dijumlahkan }
    if (barisA <> barisB) or (kolomA <> kolomB) then
    begin
        writeln('Yahh, nggak bisa dijumlahin nichh..');
        writeln('Jumlah baris dan kolom kedua matriks harus sama.');
    end
    else
    begin
        { Input Matriks A }
        writeln('Masukkan nilai matriks A:');

        for i := 1 to barisA do
        begin
            for j := 1 to kolomA do
            begin
                write('A[', i, ',', j, '] = ');
                readln(A[i,j]);
            end;
        end;

        writeln;

        { Input Matriks B }
        writeln('Masukkan nilai matriks B:');

        for i := 1 to barisB do
        begin
            for j := 1 to kolomB do
            begin
                write('B[', i, ',', j, '] = ');
                readln(B[i,j]);
            end;
        end;

        { Penjumlahan Matriks A dan B }
        writeln;
        writeln('=== HASIL PENJUMLAHAN MATRIKS A + B ===');

        for i := 1 to barisA do
        begin
            for j := 1 to kolomA do
            begin
                C[i,j] := A[i,j] + B[i,j];
                write(C[i,j]:5);
            end;
            writeln;
        end;
    end;

    readln;
end.