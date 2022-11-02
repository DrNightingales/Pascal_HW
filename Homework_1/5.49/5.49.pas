program t549;
var 
	N, i: integer;
	x, S, Sq, D: real;
	
begin
	read(N);
	S := 0;
	Sq :=0;
	if N < 2 then 
	begin
		write(0, ' ', 0);
		exit;
	end;
	
	for i := 1 to N do
	begin
		read(x);
		S := S + x;
		Sq := Sq + x*x;
		
	end;
	D := (Sq - (S*S)/N)/(N-1);
	write(S/N:0:9, ' ', D);
end.

