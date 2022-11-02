program t631;
uses StrUtils;
const
	zero = 48;
var 
	N, i: integer;
	res, d: int64;

begin
	read(N);

	if N < 0 then
	begin
		write(-1);
		exit;
	end;
	for i := 0 to N do
	begin
	N := i;
	res := 0;
	d := 1;
	repeat
		res := res + (N mod 3) * d;
		d := d*10;
		N := N div 3;
		until N < 1;
		write(res, ' ');
	end;
end.
