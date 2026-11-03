{ 
    Nama: Angello Ad Harvel Sitorus
    NIM: 261401053
}

program MenuMakanan;
uses crt;

var
  pilihan : integer;

begin
  clrscr;
  
  writeln('=== MENU KANTIN ===');
  writeln('1. Nasi Goreng       - Rp 15.000');
  writeln('2. Mie Ayam          - Rp 12.000');
  writeln('3. Bakso Sapi (Khas) - Rp 18.000'); 
  writeln('4. Ayam Geprek       - Rp 15.000');
  writeln('5. Es Teh Manis      - Rp  5.000');
  writeln('-------------------');
  write('Masukkan Kode Menu (1-5) : '); readln(pilihan);
  
  writeln;
  case pilihan of
    1: writeln('Anda memilih Nasi Goreng. Biaya: Rp 15000');
    2: writeln('Anda memilih Mie Ayam. Biaya: Rp 12000');
    3: writeln('Anda memilih Bakso Sapi. Biaya: Rp 18000');
    4: writeln('Anda memilih Ayam Geprek. Biaya: Rp 15000');
    5: writeln('Anda memilih Es Teh Manis. Biaya: Rp 5000');
  else
    writeln('Kode menu yang Anda masukkan tidak tersedia.');
  end;
end.