{+I, +R}

Program t1160;

Const 
    N =   3;
    M =   4;

Type 
    Tmatrix =   array[1..N, 1..M] Of real;
Function zerorows(Var A: Tmatrix):   integer;

Var 
    i, j:   int32;
    num:   integer;
Begin
    j := 1;
    num := 0;
    For i := 1 To N Do
        Begin
            While (a[i, j] = 0) And (j <= M) Do
                j := j + 1;
            If j = (M+1) Then
                num := num + 1;
            j := 1;
        End;
    zerorows := num;
End;
Procedure print_matrix(Var A: Tmatrix);

Var 
    i, j:   int32;
Begin
    For i := 1 To N Do
        Begin
            For j := 1 To M Do
                write(a[i, j], ' ');
            writeln;
        End;
End;

Var 
    i, j, k, current_max:   int32;
    matrices:   array[1..3] Of Tmatrix;
    max_zerorows:   array[1..3] Of int32;
Begin
    current_max := -1;
    For k := 1 To 3 Do
        Begin
            For i := 1 To N Do
                For j := 1 To M Do
                    read(matrices[k][i, j]);
            max_zerorows[k] := zerorows(matrices[k]);
            If max_zerorows[k] > current_max Then
                current_max := max_zerorows[k];
        End;
    For k := 1 To 3 Do
        If max_zerorows[k] = current_max Then
            print_matrix(matrices[k]);
End.
