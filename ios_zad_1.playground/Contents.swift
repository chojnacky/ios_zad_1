import Cocoa

class SalaKonf{
    var name:String = ""
    var state:String = ""
    var time:Int = 0
    
    //inicjaliacja z rezerwacja
    init(newName:String, reservation:String, t:Int){
        name = newName
        state = reservation
        time = t
    }
    //inicjalizacja bez rezerwacji
    init(newName:String, reservation:String){
        name = newName
        state = reservation
        time = 0
    }
    
    func description(){
        (state == "reserved") ? print("\(name) - \(state) - \(time)") : print("\(name) - \(state)")
    }
}

