program t412d;
var a, b, c, D, x1, x2, x3, x4, t1, t2: real;
label 1;
begin
    read(a, b, c);
    if a = 0 then
    begin
        writeln('Error');
        exit;
    end;
    D := b*b - 4*a*c;
    if D < 0 then goto 1;
    if D = 0 then
    begin

        t1 := -b/(2*a);
        if t1 < 0 then goto 1;
        if t1 = 0 then
        begin
                write(0);
                exit;
        end;
        x1 := sqrt(t1);
        x2 := -sqrt(t1);
        writeln(x1:0:8, ' ', x2:0:8);
        exit;
    end;
    t1 := (-b + sqrt(D))/(2*a);
    t2 := (-b - sqrt(D))/(2*a);
    if (t1 < 0) and (t2 < 0) then goto 1;
    if (t1 = 0) and (t2 = 0) then
    begin
        write(0);
        exit;
    end;
    if t1 > 0 then
    begin
        x1 := sqrt(t1);
        x2 := -sqrt(t1);
        write(x1:0:8, ' ', x2:0:8, ' ')
    end;
    if t1 = 0 then write(0, ' ');

    if t2 > 0 then
    begin
        x3 := sqrt(t2);
        x4 := -sqrt(t2);
        write(x3:0:8,' ', x4:0:8, ' ')
    end;
    if t2 = 0 then write(0);

    exit;

    1:writeln('No roots');
end.

