program t844b;
const
    n = 4;
var 
    s1: array[1..n] of char;
    s2: array[1..n] of char;
    s1_dict: array['/'..'z'] of integer;
    s2_dict: array ['/'..'z'] of integer;
    i: integer;
    c: char;
    t: boolean;
begin
    t := false;
    for c := '/' to 'z' do
    begin
        s1_dict[c] := 0;
        s2_dict[c] := 0;
    end;
    for i := 1 to n do
    begin
        read(s1[i]);
        s1_dict[s1[i]] := s1_dict[s1[i]] + 1;
    end;
    for i := 1 to n do
    begin
        read(s2[i]);
        s2_dict[s2[i]] := s2_dict[s2[i]] + 1;
    end;
    if (s1 <> s2) then
    begin
        t := true;
        for c := '/' to 'z' do
            if s1_dict[c] <> s2_dict[c] then
            begin
                t := false;
                break;
            end;
    end;
    writeln(t);

end.
    
