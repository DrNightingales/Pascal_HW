program t544;
const
        n=8;
var
        i, min_d_i: integer;
        x, d, min_d: real;
begin
        min_d := 2;
        for i := 1 to n do
        begin
                read(x);
                x := abs(x);
                if (x-trunc(x)) < (trunc(x)+1-x) then
                        d := x-trunc(x)

                else
                        d := trunc(x)+1-x;
                if d < min_d then
                begin
                        min_d := d;
                        min_d_i := i;
                end;
        end;
        write(min_d_i);

end.
