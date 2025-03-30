Create or replace PACKAGE FIDE_HR_PCK
as
End FIDE_HR_PCK;


Create or replace PACKAGE body FIDE_HR_PCK

as

end FIDE_HR_PCK;


Set ServerOUTPUT on;


 Select FIDE_HR_PCK.aumento_salario(119,0.20) as Aumento from Dual;
