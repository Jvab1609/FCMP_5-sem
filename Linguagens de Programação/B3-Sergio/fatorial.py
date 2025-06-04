# Recursivo
def fatRec(f):
    if (f == 0):
        return 1
    else:
        return (f * fatRec(f - 1))


# Iterativo
def fatIter(f):
    aux = f
    if (f == 0):
        return 1
    else:
        for i in range(f - 1, 0, -1):
            aux = aux * i
        return aux




contador = 0
for i in range (10):
    if (i % 2 == 0):
        contador += 1

print(f"% de pares = {contador/10}")