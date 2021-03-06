import sys
import re

if len(sys.argv) != 2:
    exit(f"Usage: {sys.argv[0]} INFILE")

infile = sys.argv[1]

replace = {
    'python' : 'java',
    'Python' : 'Java',
}

with open(infile, 'r') as inf:
    for row in inf:
        row = row.rstrip("\n")
        row = re.sub(r'(?<!Monty )([pP]ython)', lambda match: replace[match.group(1)], row)
        print(row)

