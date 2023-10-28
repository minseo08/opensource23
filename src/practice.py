number = input("write number:")
year = number[0:4]
month = number[4:6]
date = number[6:]
age = 2020 - int(year) + 1
print("birth year:" + year)
print("birth date:" + month + "." + date)
print("age:" , age)

