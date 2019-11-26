#application target for execute
calc: ui.o infixtopostfix.o codegen.o interpreter.o
	ui.o
	infixtopostfix.o
	codegen.o
	interpreter.o


#object file targets for testing:
ui.o:	ui.c
	gcc -o ui.o ui.c

infixtopostfix.o: 	infixtopostfix.c infixtopostfix.h tokenizer.c tokenizer.h
	gcc -o infixtopostfix.o infixtopostfix.c tokenizer.c

codegen.o: 			codegen.c codegen.h tokenizer.c tokenizer.h
	gcc -o codegen.o codegen.c tokenizer.c

interpreter.o:		interpreter.c 
	gcc -o interpreter.o interpreter.c


test:
	gcc -o tokenizer_test.t tokenizer_test.c
	prove ./tokenizer_test.t

# clean target
clean:
	rm *.o calc code.txt
	


