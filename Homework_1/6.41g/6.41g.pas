program t641g;
const
    zero = 48;
var
    c, c_prev: char;
    f: boolean;
begin
    c_prev := '0';
    f := false;
    repeat
        read(c);
        if c = '.' then break;
        if ('0' > c) or ('9' < c) then 
        begin
            f := false;
            break;
        end;
        if ((ord(c_prev)-zero)*10 + ord(c)-zero) mod 4 <> 0 then f := false else f := true;
        c_prev := c;
    until c = '.';
    writeln(f);
end.


