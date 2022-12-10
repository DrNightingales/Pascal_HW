
Program t1156;


Function Sum_of_divisors(K: integer):   integer;

Var sum, i:   integer;
Begin
    sum := 1;
    For i := 2 To (k-1) Do
        If k Mod i = 0 Then
            sum := sum + i;
    Sum_of_divisors := sum;
End;

Var 
    sums:   array[2..maxint] Of integer;
    N, i, j:   integer;
Begin
    read(N);
    If N < 3 Then
        Begin
            write('Error');
            exit;
        End;
    For i := 2 To N Do
        sums[i] := Sum_of_divisors(i);
    For i := 2 To N Do
        For j := i+1 To N Do
            If (sums[i] = j) And (sums[j] = i) Then
                write(i, ' ', j, ' ');
End.
