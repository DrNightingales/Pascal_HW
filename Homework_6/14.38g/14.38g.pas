
Program t1438g;

Const 
    unvoiced =   ['c', 'f', 'h', 'k', 'p', 'q', 's', 't', 'x'];
    allowed =   ['a'..'z', '.',','];

Var 
    letters_seen:   set Of char;
    unvoiced_mask:   array['a'..'z'] Of boolean;
    c:   char;
    len:   integer;
    issue_met:   boolean;
Begin
    For c In 'a'..'z':
        unvoiced_mask[c] := false;
        issue_met := false;
        len := 0;
        letters_seen := [];
        Read(c);
        While (c <> '.') And Not (issue_met) Do
        Begin
            If Not (c In allowed) Then
                issue_met := true;
            If c <> ',' Then
                Begin
                    len := len + 1;
                    Include(letters_seen, c);
                End
            Else
                If len = 0 Then
                    issue_met := true
            Else
                len := 0;
            read(c);
        End;
    If issue_met Or (len = 0) Then
        write('Error')
    Else
        For c In unvoiced Do
            If Not (c In letters_seen) Then
                write(c);
End.
