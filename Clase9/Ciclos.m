%Loops
% como implementar un for

for i=1:5
disp(i)
end

 N=10;
 for i=1:N
    i.^2
 end

 %%%%%%%%%%%%%%%%%%%
 %% Anidar un for y un if
 %%%%%%%%%%%%%%%%%%%

 % obj: contar cuantos numeros son menores que 5 en el vector RandN 
 RandN=randi(10,1,N);

 counter=0;

 for i=1:N
     if RandN(i)<=5
         counter=counter+1;
     end
 end
 disp([num2str(counter) ' numeros son menores o iguales que 5'])

%%%%%%%%%%%%%%%%%%% while
i = 1;

while i < 6
  disp(i)
  i = i+1;
end

