program t555;
var i, n, s: LongInt;
begin
        read(n);
        s := 0;
        if n <= 0 then
        begin
                writeln('Error');
                exit;
        end;
        for i := 1 to n div 2 do
        begin
                if (n mod i) = 0 then s := s + i;
        end;
        if s = n then writeln('true') else writeln('false');
end.