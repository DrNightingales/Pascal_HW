
Program t1151;
Function Intersection(a1, b1, c1, a2, b2, c2:real; Var X, Y:real):   boolean;
Begin
    If a1*b2 - a2*b1 = 0 Then
        Intersection := false
    Else
        Begin
            X :=   -(b1 * c2 - b2 * c1) / (a1 * b2 - a2 * b1);
            Y :=   -(a2 * c1 - a1 * c2) / (a1 * b2 - a2 * b1);
            Intersection := True;
        End;
End;

Var 
    a, b, c, x, y:   array[1..3] Of real;
    area:   real;
    i, j:   integer;
    inter:   packed array[1..3] Of boolean;
Begin
    For i := 1 To 3 Do
        Begin
            read(a[i]);
            read(b[i]);
            read(c[i]);
        End;
    For i := 1 To 2 Do
        For j := i+1 To 3 Do
            inter[i+j-2] := Intersection(a[i], b[i], c[i], a[j], b[j], c[j], x[i+j-2], y[i+j-2]);

    If (Not inter[1]) Or (Not inter[2]) Or (Not inter[3]) Then
        write(-1)
    Else
        If (x[1] = x[2]) And (x[2] = x[3]) Then
            write(0)
    Else
        Begin
            For i := 1 To 3 Do
                write(x[i], ' ', y[i], ' ');
            area :=   0.5*abs(x[1]*(y[2]-y[3]) + x[2]*(y[3]-y[1]) + x[3]*(y[1]-y[2]));
            write(area);
        End;

End.
