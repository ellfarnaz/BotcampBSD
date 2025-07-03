# ==========================================================
# Comprehension List Review
# ==========================================================

# 1. TODO: Buat list berisi angka genap dari 1 sampai 20
#    Contoh hasil: [2, 4, 6, ..., 20]

# General Syntax
even_number = []
for num in range(1, 21):
    if num % 2 == 0:
        even_number.append(num)

print(even_number)

# List comprehension Syntax
# [exp_if_true loop cond]
even_number = [num for num in range(1,21) if num % 2==0]
print(even_number)

print()

# 2. TODO: Buat list berisi kata-kata dalam huruf kapital dari list `words`
#    words = ["list", "comprehension", "in", "python"]
#    Contoh hasil: ["LIST", "COMPREHENSION", "IN", "PYTHON"]

# General Syntax
words = ["list", "comprehension", "in", "python"]
newWords = []
for word in words:
    newWords.append(word.upper())

print(newWords)

# Comprehension syntax
newWords = [word.upper() for word in words]
print(newWords)

print()

# 3. TODO: Buat list berisi label "genap" atau "ganjil" untuk angka 1 sampai 10
#    Contoh hasil: ["ganjil", "genap", "ganjil", ..., "genap"]

# General Syntax
numberList = []
for num in range(1, 11):
    if num %2 == 0:
        numberList.append("genap")
    else:
        numberList.append("ganjil")
print(numberList)

# Comprehension
# [exp_if_true - cond - exp_if_false - loop]
numberList = ["genap" if num %2==0 else "ganjil" for num in range(1,11)]
print(numberList)

