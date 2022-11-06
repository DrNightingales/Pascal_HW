program t1124;
const n = 4;
type TArray = array[1..n] of integer;

function Scal(var X,Y:Tarray; I,J:integer):integer;
var sum, k: integer;
begin
	sum :=0;
	for k := i to j do
		sum := sum + x[k]*y[k];
	Scal := sum;
end;
function sq_norm(var x:tarray; i, j: integer): integer;
var sum, k: integer;
begin
	sum := 0;
	for k := i to j do
		sum := sum + x[k]*x[k];
	sq_norm := sum;
end;
var 
	x, y: tarray;
begin
	if scal(x, y, 1, 3*n div 4) > 0 then
		write(sq_norm(x, 1, n))
	else
		write(sq_norm(y, n div 2, n));
end.
