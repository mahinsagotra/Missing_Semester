The pipe operator can connect STDOUT and STDIN.

For the tar command, it can only accept parameters as input. In order to use STDIN as input, you can use xargs to connect the corresponding commands, for example:

If you use a pipe to connect, it prompts missing operand

zl@LAPTOP-ZL ~/m/2/test> ls project1 | rm
rm: missing operand
Try 'rm --help' for more information.
Use xargs

zl@LAPTOP-ZL ~/m/2/t/project1> ls | xargs rm
zl@LAPTOP-ZL ~/m/2/t/project1> ls
# empty here
Solve this problem:

Create the environment first
zl@LAPTOP-ZL ~/m/2/e/ex4_html> ls -R
.:
folder1 / folder2 / folder3 / folder4 / folder5 / folder6 / folder7 /

./folder1:
1.html foo1 foo2 foo3

./folder2:
2.html

./folder3:
3.html

./folder4:
4.html

./folder5:
5.html

./folder6:
6.html

./folder7:
7.html
Search all html files
zl@LAPTOP-ZL ~/m/2/exercises> find ex4_html/ -name "*.html"
ex4_html/folder1/1.html
ex4_html/folder2/2.html
ex4_html/folder3/3.html
ex4_html/folder4/4.html
ex4_html/folder5/5.html
ex4_html/folder6/6.html
ex4_html/folder7/7.html
Search for the tar command
Compression instruction:

tar -czf {{target.tar.gz}} {{file1 file2 file3}}

Decompression instructions:

tar -xzf {{target.tar.gz}} -C {{directory}}

Combine search instructions and compression instructions using xargs
Among them, the -d flag of the xargs instruction means to use "\n" as the split flag of the file.

zl@LAPTOP-ZL ~/m/2/exercises> 
find ex4_html/ -name "*.html" | xargs -d "\n" tar -czf html.tar.gz
The resulting archive into extract/folder checks:

zl@LAPTOP-ZL ~/m/2/exercises> tar -xzf html.tar.gz -C extract
zl@LAPTOP-ZL ~/m/2/exercises> ls -R extract/
extract/:
ex4_html/

extract/ex4_html:
folder1 / folder2 / folder3 / folder4 / folder5 / folder6 / folder7 /

extract/ex4_html/folder1:
1.html

extract/ex4_html/folder2:
2.html

extract/ex4_html/folder3:
3.html

extract/ex4_html/folder4:
4.html

extract/ex4_html/folder5:
5.html

extract/ex4_html/folder6:
6.html

extract/ex4_html/folder7:
7.html
