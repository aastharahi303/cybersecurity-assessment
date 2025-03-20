'''
Python - Section 1 - Que. 1
Create a Python program that reads a text file and prints the number of lines, words, and characters in it. 
'''

# Function to count lines, words, and characters in a file
def count_file_contents(filename):
    try:
        with open(filename, 'r') as file:
            lines = file.readlines()  # Read all lines
            num_lines = len(lines)  # Count lines
            num_words = sum(len(line.split()) for line in lines)  # Count words
            num_characters = sum(len(line) for line in lines)  # Count characters

            print(f"Number of lines: {num_lines}")
            print(f"Number of words: {num_words}")
            print(f"Number of characters: {num_characters}")
    except FileNotFoundError:
        print("The file was not found. Please check the filename and try again.")

# Input file name from user
filename = input("Enter the name of the text file (with extension): ")
count_file_contents(filename)
