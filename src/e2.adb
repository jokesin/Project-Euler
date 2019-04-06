with Ada.Text_IO; use Ada.Text_IO;
with Common; use Common;

procedure e2 is
   
   Result : Integer := 0;
   FibonacciNum_1 : Integer := 1;
   FibonacciNum_2 : Integer := 1;
   FibonacciNum : Integer := 0;
      
   function GetNextFibonacciNum(Val_1, Val_2 : Integer) return Integer
   is
   begin
      return Val_1 + Val_2;
   end GetNextFibonacciNum;   
   
begin
   
   loop
      
      FibonacciNum := GetNextFibonacciNum(FibonacciNum_1,FibonacciNum_2);
      
      exit 
        when FibonacciNum >= 4_000_000;
      
      FibonacciNum_1 := FibonacciNum_2;
      FibonacciNum_2 := FibonacciNum;
      
      if IsEven(FibonacciNum) then
         Result := Result + FibonacciNum;
      end if;
      
   end loop;
   
   Put_Line("Answer:");
   Put_Line(Result'Img);

   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
   
end e2;
