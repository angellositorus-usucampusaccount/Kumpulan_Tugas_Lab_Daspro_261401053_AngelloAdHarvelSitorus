{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program AntrianKantinMahasiswa;

uses crt;

var
    DeretNIM: array[1..10] of string;
    n, i, j: integer;
    sama: boolean;

begin
    clrscr;
    writeln('===== KANTIN MAHASISWA =====');
    writeln('Halo, Nak! Selamat datang di kantin Ibu! ^_^');
    writeln('Ibu mau mencatat NIM kalian yang sedang mengantre.');
    writeln;

    repeat
        write('Berapa mahasiswa yang sedang mengantre (1-10)? ');
        readln(n);

        if (n < 1) or (n > 10) then
        begin
            writeln('Maaf, Nak! Jumlah antrean harus 1 sampai 10 mahasiswa.');
            writeln;
        end;
    until (n >= 1) and (n <= 10);

    writeln;
    writeln('=== Ibu mulai mencatat NIM dari depan ke belakang ===');

    for i := 1 to n do
    begin
        repeat
            write('NIM mahasiswa ke-', i, ': ');
            readln(DeretNIM[i]);

            sama := false;

            for j := 1 to i - 1 do
            begin
                if DeretNIM[i] = DeretNIM[j] then
                begin
                    sama := true;
                end;
            end;

            if sama then
            begin
                writeln('Waduh, Nak! NIM ini sudah tercatat.');
                writeln('Coba masukkan NIM yang berbeda, ya!');
                writeln;
            end;

        until not sama;
    end;

    writeln;
    writeln('=== Daftar antrean dari belakang ke depan ===');
    writeln('Kata Ibu: Kita cek dari yang paling belakang dulu, ya!');
    writeln;

    for i := n downto 1 do
    begin
        writeln('Mahasiswa urutan ', i, ' | NIM: ', DeretNIM[i]);
    end;

    writeln;
    writeln('Selesai, Nak! Terima kasih sudah mengantre dengan tertib.');

    readln;
end.