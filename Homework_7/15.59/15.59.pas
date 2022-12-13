

Var 
    file1, file2, temp:   text;
    c:   char;
Begin
    Assign(file1, '1.txt');
    Assign(file2, '2.txt');
    Assign(temp, 'temp');
    reset(file1);
    rewrite(temp);
    While Not eof(file1) Do
        Begin
            read(file1, c);
            write(temp, c);
        End;
    close(file1);
    close(temp);
    reset(file2);
    rewrite(file1);
    While Not eof(file2) Do
        Begin
            read(file2, c);
            write(file1, c);
        End;
    close(file1);
    close(file2);
    reset(temp);
    rewrite(file2);
    While Not eof(temp) Do
        Begin
            read(temp, c);
            write(file2, c);
        End;
    close(file2);
    close(temp);

    erase(temp);
End.
