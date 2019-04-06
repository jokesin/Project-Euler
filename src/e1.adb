with Ada.Text_IO; use Ada.Text_IO;

with Common; use Common;

procedure e1 is
   
   Result : Natural := 0;
         
begin

   for K in 1..999 loop
      if IsMult(K,3) or else IsMult(K,5) then
         Result := Result + K;
      end if;
      
   end loop;   
   
   Put_Line(Result'Img);

   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
   
end e1;
