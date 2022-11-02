program t930;
const 
    n = 4;
    eps = 10e-6;
var
    a: array[1..n, 1..n] of real;
    s1, s2: real;
    i, j, k: integer;
    orthonorm: boolean;
begin
    for i := 1 to n do
        for j := 1 to n do
            read(a[i][j]);

    i := 1;
    j := 1;
    k := 1; 
    orthonorm := true;
    while (i <= n) and orthonorm do
    begin
        s2 := 0;
        for k := 1 to n do
            s2 := s2 + a[i][k]*a[i][k];
        orthonorm := orthonorm and (abs(s2-1) < eps);
        j := i + 1;
        while (j <= n) and orthonorm do
        begin
            s1 := 0;
            for k := 1 to n do
                s1 := s1 + a[i][k]*a[j][k];
            orthonorm := orthonorm and (abs(s1) < eps);
            j := j + 1;
        end;
        i := i + 1;
        end;
    write(orthonorm);
end.


