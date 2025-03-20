'''
Python - Section 1 - Que. 1
Write a Python program that takes a list of numbers as input and prints the largest number in the list.
'''

# Function to find the largest number in a list
def find_largest_number(numbers):
    if not numbers:
        return "The list is empty."
    largest = numbers[0]  
    for number in numbers:
        if number > largest:
            largest = number
    return largest

numbers = input("Enter a list of numbers separated by spaces: ")
numbers_list = list(map(float, numbers.split()))  

largest_number = find_largest_number(numbers_list)
print("The largest number in the list is:", largest_number)
