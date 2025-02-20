```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   -- Deep copy using a loop
   for I in A'Range loop
      B(I) := A(I);
   end loop;
   A(1) := 100;
   -- Now B(1) is 1, as expected
end Example_Solution;
```