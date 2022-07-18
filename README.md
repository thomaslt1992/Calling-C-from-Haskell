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
cd Calling-C/C++-from-Haskell/
make 
./Caller
```

<p> Caller is the Haskell function whereas called is the C functions </p>

After compiling with ```make``` (MakeFile) you should see the compiled files of .c files. <br />
To re-run just use:```./Caller```

