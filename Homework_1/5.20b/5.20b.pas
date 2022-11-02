program t520b;
const
        eps=1e-6;
var
        sinh, x, term: real;
        i: integer;


begin
        read(x);
        sinh := x;
        term := x;
        i := 1;
        repeat
                term := term*(x*x)/(2*i*(2*i+1));
                sinh := sinh + term;
                i := i + 1;

        until abs(term) < eps;
        write(sinh:0:7);
end.
