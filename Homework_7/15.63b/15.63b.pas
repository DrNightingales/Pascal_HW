
Uses sysutils;

Const 
    zero =   ord('0');

Type 
    Tstr1 =   string[10];
    Tstr2 =   string[12];
    Tsex =   (M, F);
    Tstud =   Record
        name:   Record
            s_name:   Tstr2;
            f_name:   Tstr1;
        End;
        sex:   Tsex;
        marks:   array[1..5] Of integer;
    End;
    Tfile =   file Of Tstud;
Function cmp(s1, s2: Tstud):   integer;

Var 
    r:   integer;
Begin
    r := AnsiCompareText(s1.name.s_name, s2.name.s_name);
    If r <> 0 Then
        cmp := r;
    cmp := AnsiCompareText(s1.name.f_name, s2.name.f_name);

End;

Var 
    source, s:   Tfile;
    destination:   text;
    students:   array[1..31] Of Tstud;
    student, index:   Tstud;
    i,j, N_excel, mark:   integer;
    sex_char:   char;
    excel, limit_exceeded:   boolean;
Begin
    Assign(source, '1.std');
    Assign(destination, '2.txt');
    i := 1;
    reset(source);
    rewrite(destination);
    limit_exceeded := false;
    While Not eof(source) Do
        Begin
            read(source, student);
            excel := true;
            For mark In student.marks Do
                If mark <> 5 Then
                    excel := false;
            If excel Then
                Begin
                    If i > 30 Then
                        Begin
                            limit_exceeded := true;
                            break;
                        End;
                    students[i] := student;
                    i := i + 1;
                End;
        End;
    If limit_exceeded Then
        Begin
            write(destination, 'Too many records');
            Close(source);
            Close(destination);
        End
    Else
        Begin
            N_excel := i;

            For i := 2 To N_excel-1 Do
                Begin
                    index := students[i];
                    j := i;
                    While (cmp(students[i], index) < 0) Do
                        Begin
                            students[j] := students[j-1];
                            j := j - 1;
                            If j < 1 Then
                                break;
                        End;
                    students[j] := index;
                End;
            For j := 1 To N_excel Do
                With students[j] Do
                    Begin
                        If name.s_name = '' Then
                            continue;
                        If sex = M Then
                            sex_char := 'M'
                        Else
                            sex_char := 'F';
                        writeln(destination, name.s_name, ' ', name.f_name, ' ', sex_char);
                    End;
            Close(source);
            Close(destination);
        End;
End.
