func fibonacci(_ x:Int)->Int{
    if x == 1 || x == 2{
        return 1
    }
    return fibonacci(x-1) + fibonacci(x-2)
}
print(fibonacci(5))
