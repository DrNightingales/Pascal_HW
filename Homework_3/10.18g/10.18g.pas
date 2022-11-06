program t1018g;
const 
	n = 50;
	m = 40;
var 
	words: array[1..n] of string[m];
	s: string[m];
	i, j, l: integer;
	c: char;
	new_word: boolean;
begin
	new_word := false;
	i := 1;
	s := '';
	read(c);
	while c <> '.' do
	begin
		if c = ' ' then
		begin
			if new_word then
			begin
				words[i] := s;
				s := '';
				i := i + 1;
				new_word := false;
			end;
			read(c);
			continue;
		end;
		new_word := true;
		s := s + c;
		read(c);
	end;
	words[i] := s;
	for j := 1 to i-1 do
	begin
		l := Length(words[j]);
		if words[j] <> words[i] then
		begin
			if l > 1 then
				delete(words[j], l, l);
			writeln(words[j]);
		end;
	end;
end.
