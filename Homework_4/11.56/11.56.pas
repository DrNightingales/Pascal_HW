
Program t1156;


Function Sum_of_divisors(K: longint):   longint;

Var sum, i:   longint;
Begin
    sum := 1;
    For i := 2 To (k-1) Do
        If k Mod i = 0 Then
            sum := sum + i;
    Sum_of_divisors := sum;
End;

Var 
    sums:   array[2..maxint] Of longint;
    N, i, j:   longint;
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
