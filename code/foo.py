
''''(1) Idris is a compiled language; Python is interpreted language
(2) Idris uses static type checking(compile done); Python uses dynamic type checking (run done, there is no compile state, dont check your code untl you run it )
(3) Idris values are immutable whereas Python has mutable state( Idris cant have multiple values, but i can assign multiple values to python--this makes huge difference)
(4) Idris is a language of expressions, python is a language of commands(command is state transformer, the state is x=3 x=4, beforex equals 3 but if i write a code that assign 4 to x, then that changes the state of x and x becomes 4)
 -- static type checking can have safety preq for building up the software, you cant run code with code error
 --in python, eveyr value has two types, every runtime type value has dynamic type '''
'''C-c C-c to run it'''

def foo(n):
    return n + 3

print (foo(6))
# print is a "procedure" that affects the world by printing on console
print(print ("Happy 200th Birthday, Geoge Boole!"))

#None -- serve same purposes as both option, non and unit, mkUnit

x=5
print(x)
x=6
print(x)

