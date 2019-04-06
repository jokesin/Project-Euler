with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure e4 is

   Result : Natural := 0;
   Last_Value : Natural := 0;
   
   function IsPalindrome (Var : Natural) return Boolean is
      bResult : Boolean := True;
      Var_String : String := Trim(Var'Img, Both);
      Steps_Count : Natural := Var_String'Length / 2;
   begin
      
      for K in 1..Steps_Count loop
         if Var_String(K) /= Var_String(Var_String'Length - K + 1) then
            bResult := False;
            exit;
         end if;         
      end loop;
            
      return bResult;
      
   end IsPalindrome;
   
begin
   
   Get_Palindrome:
   for K in reverse 100..999 loop
      for L in reverse 100..999 loop
         Result := K * L;
         
         if Result < Last_Value then
            exit;
         end if;
         
         Put_Line("Checking:" & K'Img & " *" & L'Img & " =" & Result'Img);
         
         if IsPalindrome(Result) then
            Last_Value := Result;
            Put_Line("Current value :" & Last_Value'Img);
            exit;
         end if;
         
      end loop;
      
   end loop Get_Palindrome;
   
   Result := Last_Value;
   
   Put_Line("Answer:");
   Put_Line(Result'Img);

   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;
   
end e4;
