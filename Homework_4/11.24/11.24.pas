
Program t1124;

Const n =   4;

Type TArray =   array[1..n] Of integer;

Function Scal(Var X,Y:Tarray; I,J:integer):   integer;

Var sum, k:   integer;
Begin
    sum := 0;
    For k := i To j Do
        sum := sum + x[k]*y[k];
    Scal := sum;
End;
Function sq_norm(Var x:tarray; i, j: integer):   integer;

Var sum, k:   integer;
Begin
    sum := 0;
    For k := i To j Do
        sum := sum + x[k]*x[k];
    sq_norm := sum;
End;

Var 
    x, y:   tarray;
    i:   integer;
Begin
    For i := 1 To N Do
        read(x[i]);
    For i := 1 To N Do
        read(y[i]);
    If scal(x, y, 1, 3*n Div 4) > 0 Then
        write(sq_norm(x, 1, n))
    Else
        write(sq_norm(y, n Div 2, n));
End.
