package body Common is

   function IsMult (Val_1,Val_2 : Integer) return Boolean
   is
   begin
      return (Val_1 mod Val_2 = 0);
   end IsMult;

   function IsEven (Val : Integer) return Boolean
   is
   begin
      return (Val mod 2 = 0);
   end IsEven;
   
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
   
end Common;
