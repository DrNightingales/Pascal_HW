procedure Move_last_to_bgeinning(var L:Tlist);
var 
    first_node: TNode;
    node: TNode;
begin
    first_node := L^;
    node := L^;
    while node.next^.next <> nil do
        node := node.next^;
    node.next^.next := L;
    L := node.next;
    node.next := nil;
    
end;