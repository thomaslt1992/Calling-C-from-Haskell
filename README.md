# Calling-C-from-Haskell
This is a very simple wrapping of existing sources on how to call C functions in Haskel

To run the code:

<b>Prerequisites</b>

Inside your package manager (i.e., stack) run:

```
$ cabal install --lib c2hs
```

## To run the code as an example
``` 
git clone https://github.com/thomaslt1992/Calling-C-from-Haskell.git
make 
./CallerBacker
```

After compiling with ```make``` (MakeFile) you should see the compiled files of .c files. \n
The values of functions are currently static \n
To re-run just use 
```
./Callerback
```

