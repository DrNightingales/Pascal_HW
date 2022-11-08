
Program t1017j;

Const 
    n =   50;
    m =   40;

Var 
    words:   array[1..n] Of string[m];
    s:   string[m];
    i, j:   integer;
    c, w:   char;
    new_word:   boolean;
    seen:   array['A'..'z'] Of boolean;
Begin
    For c := 'A' To 'z' Do
        seen[c] := false;
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
                            For w := 'A' To 'z' Do
                                seen[w] := false;
                            new_word := false;
                        End;
                    read(c);
                    continue;
                End;
            new_word := true;
            If seen[c] Then
                Begin
                    s := '';
                    Repeat
                        read(c);
                    Until (c = ' ') Or (c = '.');
                End
            Else
                Begin
                    s := s + c;
                    seen[c] := true;
                    read(c);
                End;
        End;
    words[i] := s;
    For j := 1 To i-1 Do
        If words[j] <> words[i] Then
            writeln(words[j]);
End.
