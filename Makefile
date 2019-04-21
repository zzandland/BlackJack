BlackJack: Main.o DeckOfCards.o BlackJack.o
	g++ -o BlackJack 7_1.o DeckOfCards.o BlackJack.o

Main.o: Main.cpp DeckOfCards.h BlackJack.o
	g++ -c Main.cpp

BlackJack.o: DeckOfCards.h BlackJack.h BlackJack.cpp
	g++ -c BlackJack.cpp

DeckOfCards.o: DeckOfCards.h DeckOfCards.cpp
	g++ -c DeckOfCards.cpp

clean:
	rm *.o BlackJack
