obj = main.o search.o stats.o
cc = gcc

search-cli: $(obj)
	cc -o search-cli $(obj)

main.o:
	cc -c main.c search.h stats.h

search.o:
	cc -c search.c search.h

stats.o:
	cc -c stats.c stats.h search.h

clean:
	rm $(obj) search.h.gch stats.h.gch

