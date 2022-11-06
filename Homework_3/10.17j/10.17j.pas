program t1017j;
const 
	n = 50;
	m = 40;
var 
	words: array[1..n] of string[m];
	s: string[m];
	i, j: integer;
	c, w: char;
	new_word: boolean;
	seen: array['A'..'z'] of boolean;
begin
	for c := 'A' to 'z' do
		seen[c] := false;
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
				for w := 'A' to 'z' do
					seen[w] := false;
				new_word := false;
			end;
			read(c);
			continue;
		end;
		new_word := true;
		if seen[c] then
		begin
			s := '';
			repeat
				read(c);
			until (c = ' ') or (c = '.');
		end
		else
		begin
			s := s + c;
			seen[c] := true;
			read(c);
		end;
	end;
	words[i] := s;
	for j := 1 to i-1 do
		if words[j] <> words[i] then
			writeln(words[j]);
end.
