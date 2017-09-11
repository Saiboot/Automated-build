# -- General -- #
CC       =gcc
BDIR     =src/build
ODIR     =src/obj
IDIR     =src/inc
CFLAGS   =-lm -lSDL2 -std=c99

# -- DEPS -- #
_DEPS =dep.h
DEPS  =$(patsubst %,$(IDIR)/%,$(_DEPS))
_OBJ  =main.o
OBJ   =$(patsubst %,$(ODIR)/%,$(_OBJ))

all: files build_

$(ODIR)/%.o: src/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

build_: $(OBJ)
	$(CC) -o $(BDIR)/$@ $^ $(CFLAGS)

files:
	mkdir -p $(ODIR)
	mkdir -p $(BDIR)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o

