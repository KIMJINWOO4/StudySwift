func a(a:Int,closure:(_ a:Int)->Int){
    closure(a)
}
a(a: 3,closure: {
    return $0 * $0
})

