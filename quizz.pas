program tokokelontong;
uses crt;

var 
    hargaminyak, hargaberas, hargagula, hargakecap, hargatelur : integer;

    totalbelanja, pajak, totalakhir : real;
    potongan, pottambahan : integer;
    member, metode : string;


begin
clrscr; 

    hargaminyak := 20000;
    hargaberas := 25000;
    hargagula := 18000;
    hargakecap := 15000;
    hargatelur := 3000;

    writeln ('Daftar harga barang :');
    writeln ('1. Harga Minyak : Rp ',hargaminyak);
    writeln ('2. Harga Beras : Rp ',hargaberas);
    writeln ('3. Harga Gula : Rp ',hargagula);
    writeln ('4. Harga Kecap : Rp ',hargakecap);
    writeln ('5. Harga Telur : Rp ',hargatelur);

    totalbelanja := hargaminyak + hargaberas + hargagula + hargakecap + hargatelur;

    write ('Masukkan total belanja : Rp ');
    readln (totalbelanja);

    write ('Apakah anda member? (ya/tidak) : ');
    readln (member);

    pajak := 0;

    if member = 'tidak' then
        pajak := totalbelanja * 0.1;

    if totalbelanja > 200000 then
        potongan := 15000;

    writeln;
    writeln ('Metode Pembayaran :');
    writeln ('1. Qris potongan Rp10000');
    writeln ('2. Debit potongan Rp15000');
    writeln ('3. Tunai potongan Rp5000');
    write ('Pilih metode pembayaran (qris/debit/tunai) : ');
    readln (metode);

    if metode = 'qris' then
        pottambahan := 10000
    else if metode = 'debit' then 
        pottambahan := 15000
    else if metode = 'tunai' then
        pottambahan := 5000
    else
        pottambahan := 0;

    totalakhir := totalbelanja + pajak - potongan - pottambahan;

    writeln;
    writeln ('Total sebelum potongan dan pajak : Rp ',totalbelanja:0:0);
    writeln ('Pajak 10% jika non-member : ',pajak:0:0);
    writeln ('Potongan Belanja : Rp ',potongan);
    writeln ('Potongan Tambahan : Rp ',pottambahan);
    writeln ('Total akhir yang harus dibayar : Rp ',totalakhir:0:0);
    writeln ('Status pelanggan : ',member);
    writeln ('Metode pembayaran : ',metode);

    readln;
end.