program soalpertama;
uses crt;

var
    tinggi : real;

begin
clrscr;
    write ('Masukkan tinggi anda (dalam cm) : ');
    readln (tinggi);

    tinggi := tinggi / 100;

    if (tinggi > 1.7) then
       begin
        writeln ('tinggi');
        end
    else
        begin
        writeln ('pendek');
        end;

end.