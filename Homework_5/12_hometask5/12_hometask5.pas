
Program t12_hometask5;

Function product(n: integer):   integer;

Var 
    d:   integer;
Begin
    d := n Mod 10;
    n := n Div 10;
    If d <> 0  Then
        Begin

            If n <> 0 Then
                product := d*product(n)
            Else
                product := d;
        End
    Else
        product := product(n);
End;

Procedure read_next(Var max_prod, max_n: integer);

Var 
    n, p, k:   integer;
Begin
    read(k);
    n :=   abs(k);
    If n = 0 Then
        exit;

    p := product(n);
    If p > max_prod Then
        Begin
            max_prod := p;
            max_n := k;
        End;
    read_next(max_prod, max_n);
End;

Var 
    max_prod, max_n:   integer;

Begin
    max_prod := -1;
    max_n := 0;
    read_next(max_prod, max_n);
    writeln(max_n);
End.
