with Ada.Text_IO; use Ada.Text_IO;
with Common; use Common;

procedure e5 is
   Result : Long_Long_Integer := 20 * 19 * 17 * 13 * 11 * 7 * 3;
   bMult : Boolean := False;
begin
   
   loop
      Put_Line("Checking :" & Result'Img);
      bMult := True;
      for K in reverse 11..20 loop
         if not IsMult(Result, Long_Long_Integer(K)) then
            bMult := False;
            exit;
         end if;
      end loop;
      
      exit 
        when bMult = True;
      
      Result := Result + 20 * 19 * 17 * 13 * 11 * 7 * 3;
      
   end loop;
   
   Put_Line("Answer:");
   Put_Line(Result'Img);
   
   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
end e5;
