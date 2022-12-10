Function COS1(x:real; k:integer):   real;
Begin
    If k = 0 Then
        cos1 := x
    Else
        cos1 := cos(cos1(x, k-1));
End;
