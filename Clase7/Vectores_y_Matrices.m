%% Definiendo y operando vectores y matrices 

% Definiendo vectores y matrices
Fila1=[1,2,3]
Fila2=[1 2 3]

Columna1=[1;2;3]
% converting columns and rows (transposing)
%Fila3=Columna1'

Matriz=[1,2,3;4,5,6]

%% Operando vectores y matrices

SumFilas=Fila1+Fila2
MultiFilas=Fila1.*Fila2 
% .* y ./ representan las operaciones punto a punto
% * y / representan productos matriciales 
% [N,M]*[M,P]=[N,P]

Matriz2=Matriz+10
% matrices deben tener las mismas dimensiones
% la siguiente linea devuelve error
%Matriz3=Matriz+Matriz'

% taking the mean
mean(Matriz2,1) % 1=filas (por defecto), 2=columnas