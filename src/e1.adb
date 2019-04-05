with Ada.Text_IO; use Ada.Text_IO;

procedure e1 is
   
   Result : Natural := 0;
   
   function IsMult (Val_1,Val_2 : Integer) return Boolean
   is
   begin
      return (Val_1 mod Val_2 = 0);
   end IsMult;
      
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
