program t412a;
var x, a:real;
begin
    read(a);
    if a > 0 then
        x  := -abs(a-1)/(2*a)
    else
        x := ln(sqrt(a*a+1));
    write(x);
end.