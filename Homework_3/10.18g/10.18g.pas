
Program t1018g;

Const 
    n =   50;
    m =   40;

Var 
    words:   array[1..n] Of string[m];
    s:   string[m];
    i, j, l:   integer;
    c:   char;
    new_word:   boolean;
Begin
    new_word := false;
    i := 1;
    s := '';
    read(c);
    While c <> '.' Do
        Begin
            If c = ' ' Then
                Begin
                    If new_word Then
                        Begin
                            words[i] := s;
                            s := '';
                            i := i + 1;
                            new_word := false;
                        End;
                    read(c);
                    continue;
                End;
            new_word := true;
            s := s + c;
            read(c);
        End;
    words[i] := s;
    For j := 1 To i-1 Do
        Begin
            l := Length(words[j]);
            If words[j] <> words[i] Then
                Begin
                    If l > 1 Then
                        delete(words[j], l, l);
                    writeln(words[j]);
                End;
        End;
End.
