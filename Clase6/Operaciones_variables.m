%% Operando variables en Matlab

% valores numericos
C1=10;
C2=20;
C3=C1+C2

% operaciones de chars y strings
% chars
String1='Hola';
String2=' Mundo';

% concatenar
String3=[String1 String2]
% o
String3b=strcat(String1,String2)
% WARNING: no ocupar String1+String2, esto convierte los numeros a ASCII

% strings
String1="Hola ";
String2="Mundo";

String3=strcat(String1,String2)
% o
String3=String1+String2



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Char
VarLa = 'La'

strcat(VarLa,VarLa)
strcat(VarLa,VarLa,VarLa,VarLa)
VarLa2=[VarLa ' '];
[VarLa2,VarLa2,VarLa2,VarLa2]

% String
VarLa="La"
strcat(VarLa,VarLa)
strcat(VarLa,VarLa,VarLa,VarLa)% try VarLa*4 and see what happens :)
VarLa2=strcat(VarLa," ")
strcat(VarLa2,VarLa2,VarLa2,VarLa2)
