program t857;
var
    c: char;
    d: array['!'..'~'] of integer;
begin
    for c := '!' to '~' do 
        d[c] := 0;

    read(c);
    while c <> '.' do
    begin
        if d[c] < 1 then
            write(c);

        d[c] := d[c] + 1;
        read(c);
    end;
end.
