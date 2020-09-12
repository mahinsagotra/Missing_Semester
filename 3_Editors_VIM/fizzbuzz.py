import sys

#!/usr/bin/env python3
def fizzbuzz(limit):
	for i in range (1,limit+1):
		if i % 3 == 0:
			print('fizz', end='')
		if i % 5 == 0:
			print('buzz', end='')
		if i % 3 and i % 5:
			print(i)

def main():
	fizzbuzz(int(sys.argv[1]))

if __name__ == '__main__':
	main()
