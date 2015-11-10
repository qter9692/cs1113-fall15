--lab Fibonacci sequence
fib:nat->nat
fib (S O) = O
fib (S(S O)) =(S O)
fib (S(S n)) = addp (mkPair fib(S n) fib(n))
