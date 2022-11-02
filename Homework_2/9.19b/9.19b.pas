program t919b;
const
    n = 3;
    m = 5;
var
    matrix: array[1..n, 1..m] of integer;
    k, i, j, max_in_row, counter: integer;
    t: boolean;
begin
    counter := 0;
    for i := 1 to n do
        for j := 1 to m do
            read(matrix[i][j]);

    for i := 1 to n do
    begin
        max_in_row := 0;
        for j := 1 to m do
        begin
            if (matrix[i][j] > max_in_row) or (j = 1) then
            begin
                t := true;
                for k := j+1 to m do
                    t := t and (matrix[i][j] < matrix[i][k]);
                counter := counter + integer(t);
                max_in_row := matrix[i][j];
            end;
        end;
    end;
    writeln(counter);
end.
