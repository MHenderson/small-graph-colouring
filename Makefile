BDM_DATA_FOLDER = ~/1_Project/Mathematics/GraphTheory/bdm

E2DIMACS = src/e2dimacs.awk
DIMACS_SPLIT = src/dimacs_split.awk

all: dimacs

dimacs: graphs/graph2.dimacs

graphs/graph2.dimacs: $(BDM_DATA_FOLDER)/graph2.g6
	listg -e $< | awk -f $(E2DIMACS) > $@
