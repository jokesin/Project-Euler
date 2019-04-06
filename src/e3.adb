with Ada.Text_IO; use Ada.Text_IO;
with Common; use Common;

procedure e3 is
   Task_Var : constant Long_Long_Integer := 600851475143;
   Result : Long_Long_Integer := 0;
   Divisor : Long_Long_Integer := 2;
      
begin
        
   loop
      if IsMult(Task_Var, Divisor) then
         Result := Task_Var / Divisor;
         Put_Line("Divisor : " & Divisor'Img & " Result : " & Result'Img);
         if IsPrime(Result) then
            exit;
         end if;         
      end if;
      Divisor := Divisor + 1;      
   end loop;
      
   Put_Line("Answer : ");
   Put_Line(Result'Img);
   
   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
end e3;
