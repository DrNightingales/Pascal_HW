
Program t1532g(input);

Procedure Replace(Var F: Tstring; C:char);

Const 
    FilePath =   'temp';

Var 
    r:   char;
    FSize, i:   integer;
    tempFile:   Tstring;
Begin
    Assign(tempFile, FilePath);
    rewrite(tempFile);
    reset(f);
    FSize := FileSize(f);
    While Not EOF(f) Do
        Begin
            read(f, r);
            write(tempFile, r);
        End;
    Close(f);
    Close(tempFile);
    rewrite(f);
    reset(tempFile);
    For i := 1 To FSize - 1 Do
        Begin
            read(tempFile, r);
            write(f, r);
        End;
    write(f, c);
    Close(f);
    Close(tempFile);

End;
