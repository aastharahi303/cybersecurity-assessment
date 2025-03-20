#Python Programming - Section 1 - Que. 2
#Create a Python program that reads a text file and prints the number of lines, words, and characters in it. 

with open("section1-que1.py", "r", encoding="utf-8") as file:
    text = file.read()

num_lines = text.count("\n") + 1
num_words = len(text.split())
num_chars = len(text)

print("Number of lines:", num_lines)
print("Number of words:", num_words)
print("Number of characters:", num_chars)

