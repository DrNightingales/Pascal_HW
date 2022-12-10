
Program t1332;

Const 
    eps =   10e-6;

Type 
    complex =   Record
        Re, Im:   real
    End;

Function multiply(a, b: complex):   complex;

Var r:   complex;
Begin
    r.re := a.re*b.re - a.im*b.im;
    r.im := a.re*b.im + b.re*a.im;
    multiply := r;
End;
Function  add(a, b: complex):   complex;

Var r:   complex;
Begin
    r.re := a.re + b.re;
    r.im := b.im + a.im;
    add := r;
End;
Function abs(a: complex):   real;
overload;
Begin
    abs := sqrt(a.re*a.re + a.im*a.im);
End;

Var 
    z, term, fact, z_sq:   complex;
    n:   integer;
    temp:   real;
Begin
    read(z.re);
    read(z.im);
    z_sq := multiply(z, z);
    term.re :=   1;
    term.im :=   0;
    n :=   1;
    fact := term;
    While abs(fact) > eps Do
        Begin
            temp := fact.re;
            fact.re := (fact.re*z_sq.re - fact.im*z_sq.im)/(n*(n+1));
            fact.im := temp*z_sq.im + z_sq.re*fact.im;
            term := add(term, fact);
            n := n+2;
            writeln(term.re:0:6, ' ', term.im:0:6);
        End;
End.
