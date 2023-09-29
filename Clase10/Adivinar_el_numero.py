#!/usr/bin/env python
# coding: utf-8

# In[2]:


import random
# Numero minimo
lower = 0

# Numero maximo
upper = 100

# Numero maximo de intentos
Nattempts=7

# Generar un numero entero aleatorio entre 
#  lower y upper
x = random.randint(lower, upper)

# Dar instrucciones al usuario
print("\n\t Tiene ",Nattempts," oportunidades para adivinar el numero entero entre",lower, "y", upper,"!\n")

# Empezar el juego
for i in range(1,Nattempts+1):
	# Pedir al usuario que adivine el numero
	guess = int(input("Adivine el numero:- "))
	# Es el numero correcto?
	if x == guess:
		print("Felicitaciones!! adivino el numero en  ",i, " intentos")
		# Si el numero es correcto, romper el ciclo 
		break
	elif x < guess and i<Nattempts:
		print("Muy grande! proponga un numero menor")
	elif x > guess and i<Nattempts:
		print("Muy chico! proponga un numero mayor")
        
	if i==Nattempts:
	# Si llegamos hasta aqui es porque el numero de intentos se acabo
	# Avisarle al usuario que se acabaron los intentos
		print('Se acabaron los intentos! El numero era =', x)


# In[ ]:





# In[ ]:




