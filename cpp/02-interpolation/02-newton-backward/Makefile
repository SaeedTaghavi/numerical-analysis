#by Saeed Taghavi
#start of the Makefile
#defining variables

COMPILER = g++
FLAGS = -O0 
EXEFILE = run_backward-newton-interpolation
BASE = $(shell pwd)

#Makefile
default : commands

## commands   : show all commands.
commands :
	@grep -E '^##' Makefile | sed -e 's/## //g'

## clean      : clean up all the previous executable, object files, and output data.
clean: 
	@echo "Cleaning ......"
	@rm -f $(BASE)/*.txt
	@rm -f $(BASE)/a.out
	@rm -f $(BASE)/$(EXEFILE)

## compile    : compiling the source file and creating the executable file.
compile:
	@echo  "Compiling ...."
	@echo
	$(COMPILER) $(BASE)/*.cpp -o $(EXEFILE)

## run        : running the executable.
run: 
	@echo "running ...."
	$(BASE)/$(EXEFILE)

# End of the Makefile
