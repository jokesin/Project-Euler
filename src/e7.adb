with Ada.Text_IO; use Ada.Text_IO;
with Common; use Common;

procedure e7 is
   
   Result : Long_Long_Integer := 2;
   Count : Natural := 0;
   
begin
   
   loop
      
      if IsPrime(Result) then
         Count := Count + 1;
         Put_Line(Count'Img & " -" & Result'Img);
      end if;
            
      exit 
        when Count = 10001;
      
      Result := Result + 1;
      
   end loop;
   
   Put_Line("Answer:");
   Put_Line(Result'Img);
   
   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
   
end e7;
