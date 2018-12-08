all:
	$(MAKE) lex

lex:
	flex -o lex.c lex.l
	g++ -c lex.c
	g++ -c main.cpp
	g++ main.o lex.o