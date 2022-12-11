
Program t1438g;

Const 
    unvoiced =   ['c', 'f', 'h', 'k', 'p', 'q', 's', 't', 'x'];



Var 
    letters_seen:   set Of char;
    c:   char;
    len:   integer;
Begin
    len := 0;
    letters_seen := [];
    read(c);
    While c <> '.' Do
        Begin
            If c <> ',' Then
                Begin
                    len := len + 1;
                    Include(letters_seen, c);
                End
            Else
                If len = 0 Then
                    break
            Else
                len := 0;
            read(c);
        End;
    If len < 1 Then
        write('Error')
    Else
        For c In unvoiced Do
            If Not (c In letters_seen) Then
                write(c);
End.
