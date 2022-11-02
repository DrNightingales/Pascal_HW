program t641a;
const
	zero = 48;
var 
	c: char;
	f: boolean;
	s: integer;
begin
	f := true;
	read(c);
	s := ord(c)-zero;
	if c = '.' then
	begin
		writeln('false');
		exit;
	end else if  ((c < '0') or (c > '9')) then f:= false;
	
	repeat
		read(c);
		if ((c < '0') or (c > '9')) and (c <> '.') then f := false;
		s := s + ord(c)-zero;
	until c = '.';  
	s := s - ord('.')+zero;
	if s mod 9 <> 0 then f := false;
	writeln(f);
	
end.
