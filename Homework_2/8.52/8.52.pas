program t852;
const
    n = 4;
var
    d, avrg, min_d: real;
    i, min_d_i: integer;
    nums: array[1..n] of real;
begin
    avrg := 0;
    d := 0;
    min_d := 0;
    min_d_i := 0;
    for i := 1 to n do
        begin
            read(nums[i]);
            avrg := avrg + nums[i]/n;
        end;
    for i := 1 to n do
        begin
            d := abs(nums[i]-avrg);
            if (d < min_d) or (i = 1) then
                begin
                    min_d := d;
                    min_d_i := i;
                end;
            end;
    writeln(min_d_i);
    
end.
