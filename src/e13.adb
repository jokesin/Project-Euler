with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure e13 is

   Task_File : File_Type;
   Result_String : Unbounded_String;

begin

   Open(File => Task_File,
        Mode => In_File,
        Name => "task.txt");

   Result_String := To_Unbounded_String(Get_Line(Task_File));

   while not End_Of_File( Task_File ) loop

      declare
         Line : String := Get_Line(Task_File);
         Temp_String : Unbounded_String;
         A,B : Natural;
         Temp_Result_String : String := To_String(Result_String);
         Result_Cursor : Natural := Temp_Result_String'Length;
         Mem : Natural := 0;
      begin

         for K in reverse 1..Line'Length loop
            A := Natural'Value((1=>Line(K)));
            B := Natural'Value((1=>Temp_Result_String(Result_Cursor)));
            A := A + B + Mem;

            if A >= 10 then
               Mem := 1;
               A := A - 10;
            else
               Mem := 0;
            end if;

            Ada.Strings.Fixed.Overwrite(Temp_Result_String,Result_Cursor,Trim(A'Img,Ada.Strings.Both));

            Result_Cursor := Result_Cursor - 1;

         end loop;

         Result_String:=To_Unbounded_String(Temp_Result_String);

         for K in reverse 1..Result_Cursor loop
            A := Natural'Value((1=>Temp_Result_String(K)));
            A := A + Mem;

            if A >= 10 then
               Mem := 1;
               A := A - 10;
            else
               Mem := 0;
            end if;

            Overwrite(Result_String, K, Trim(A'Img,Ada.Strings.Both));
         end loop;

         if Mem > 0 then
            Insert(Result_String, 1, Trim(Mem'Img,Ada.Strings.Both));
         end if;

      end;

      Put_Line(To_String(Result_String));

   end loop;

   Put_Line("Answer:");
   Put_Line(To_String(Result_String));

   declare
      Answer : Character;
   begin
      Get_Immediate(Answer);
   end;

end e13;
