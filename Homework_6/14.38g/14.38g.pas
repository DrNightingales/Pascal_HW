
Program t1438g;

Const 
    unvoiced =   ['c', 'f', 'h', 'k', 'p', 'q', 's', 't', 'x'];
    allowed = ['a'..'z', '.',','];


Var 
    letters_seen:   set Of char;
    c:   char;
    len:   integer;
    issue_met: boolean;
Begin
	issue_met := false;
    len := 0;
    letters_seen := [];
    read(c);
    While (c <> '.') and not (issue_met) Do
        Begin
            if not (c in allowed) then
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
    If issue_met or (len = 0) Then
        write('Error')
    Else
        For c In unvoiced Do
            If Not (c In letters_seen) Then
                write(c);
End.
