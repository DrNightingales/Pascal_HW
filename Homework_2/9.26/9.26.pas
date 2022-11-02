program t926;
const
    n = 2;
var 
    i, j, k, r, t: integer;
    A, B, C: array[1..n, 1..n] of real;    
begin
    for i := 1 to n do
        for j := 1 to n do
        begin    
            read(A[i][j]);
            B[i][j] := A[i][j];
        end;
    read(t);
    if t <= 0 then
    begin
        write(0);
        exit;
    end;
    for r := 1 to t-1 do
    begin
    for i := 1 to n do
        for j := 1 to n do
        begin
        c[i][j] := 0;
            for k := 1 to n do
                c[i][j] := c[i][j] + b[i][k]*a[k][j];
        end;
    for i := 1 to n do
        for j := 1 to n do
            b[i][j] := c[i][j];
    end;

        for i := 1 to n do
        begin
            for j := 1 to n do
                write(b[i][j]:0:5, ' ');
            writeln();
        end;
end.

