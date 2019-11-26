calc: infixtopostfix.o codegen.o interpreter.o


#object file targets:

infixtopostfix.o: 	infixtopostfix.c tokenizer.c infixtopostfix.h  tokenizer.h
	gcc -o infixtopostfix.o infixtopostfix.c tokenizer.c
codegen.o: 			codegen.c codegen.h tokenizer.c tokenizer.h
	gcc -o codegen.o codegen.c tokenizer.c
interpreter.o:		interpreter.c 
	gcc -o interpreter.o interpreter.c


# clean target
clean:
	rm *.o calc code.txt
	

