def hs (n) :
    l = 1
    while (n != 1):
        print(n)
        l = (l + 1)
        if (n%2 != 0):
            n = 3*n+1
        else:
            n = n//2
    print (1)
    print (l)
    return None;




    
