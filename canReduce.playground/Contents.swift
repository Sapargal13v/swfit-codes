func canReduce(_ elem: String , _ last: String) -> Bool {
    switch (elem , last) {
    case ("NORTH" , "SOUTH") : return true
    case ("SOUTH" , "NORTH") : return true
    case ("WEST" , "EAST") : return true
    case ("EAST" , "WEST") : return true
    default: return false
    }
}


func dirReduc(_ arr: [String]) -> [String] {
    var res = [String]()
    for s in arr {
        if !res.isEmpty && (canReduce(s, res.last!)) {
            res.removeLast()
        }   else {res.append(s)}
    }
    return res
}


