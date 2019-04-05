with Ada.Text_IO; use Ada.Text_IO;

procedure e3 is
   Task_Var : constant Long_Long_Integer := 600851475143;
   Result : Long_Long_Integer := 0;
   Divisor : Long_Long_Integer := 2;
   
   function IsMult (Val_1,Val_2 : Long_Long_Integer) return Boolean
   is
   begin
      return (Val_1 mod Val_2 = 0);
   end IsMult;
   
   function IsPrime ( Var: Long_Long_Integer ) return Boolean is
      
      IsPrime_Result : Boolean := True;
      Temp : Long_Long_Integer := Var / 2;
      
   begin
      
      for K in 2..Temp loop
         if IsMult(Var, K) then
            IsPrime_Result := False;
            exit;
         end if;
      end loop;
      
      return IsPrime_Result;
        
   end IsPrime;
   
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
