# Makefile generated by BNFC.

# List of goals not corresponding to file names.

.PHONY : all clean distclean

# Default goal.

all : TestL

# Rules for building the parser.

ErrM.hs LexL.x PrintL.hs ParL.y TestL.hs : L.cf
	bnfc --haskell L.cf

%.hs : %.y
	happy --ghc --coerce --array --info $<

%.hs : %.x
	alex --ghc $<

TestL : TestL.hs ErrM.hs LexL.hs ParL.hs PrintL.hs
	ghc --make $< -o $@

# Rules for cleaning generated files.

clean :
	-rm -f *.hi *.o *.log *.aux *.dvi

distclean : clean
	-rm -f AbsL.hs AbsL.hs.bak ComposOp.hs ComposOp.hs.bak DocL.txt DocL.txt.bak ErrM.hs ErrM.hs.bak LayoutL.hs LayoutL.hs.bak LexL.x LexL.x.bak ParL.y ParL.y.bak PrintL.hs PrintL.hs.bak SharedString.hs SharedString.hs.bak SkelL.hs SkelL.hs.bak TestL.hs TestL.hs.bak XMLL.hs XMLL.hs.bak ASTL.agda ASTL.agda.bak ParserL.agda ParserL.agda.bak IOLib.agda IOLib.agda.bak Main.agda Main.agda.bak L.dtd L.dtd.bak TestL LexL.hs ParL.hs ParL.info ParDataL.hs Makefile
	

# EOF