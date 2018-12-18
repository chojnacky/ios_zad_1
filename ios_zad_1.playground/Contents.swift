import Cocoa

let res:String = "Reserved"
let nres:String = "NotReserved"

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
        (state == res) ? print("\(name) - \(state) - \(time)") : print("\(name) - \(state)")
    }
}

var arrayReserved = [SalaKonf]()
var arrayNotReserved = [SalaKonf]()
var array = [SalaKonf]()

let s1 = SalaKonf(newName: "Sala nr 1", reservation: res, t: 60)
array.append(s1)
let s2 = SalaKonf(newName: "Sala nr 2", reservation: nres)
array.append(s2)
let s3 = SalaKonf(newName: "Sala nr 3", reservation: res, t: 180)
array.append(s3)
let s4 = SalaKonf(newName: "Sala nr 4", reservation: res, t: 120)
array.append(s4)
let s5 = SalaKonf(newName: "Sala nr 5", reservation: nres)
array.append(s5)
let s6 = SalaKonf(newName: "Sala nr 6", reservation: res, t: 30)
array.append(s6)
let s7 = SalaKonf(newName: "Sala nr 7", reservation: res, t: 90)
array.append(s7)
let s8 = SalaKonf(newName: "Sala nr 8", reservation: nres)
array.append(s8)
let s9 = SalaKonf(newName: "Sala nr 9", reservation: nres)
array.append(s9)
let s10 = SalaKonf(newName: "Sala nr 10", reservation: res, t: 300)
array.append(s10)

//rozdzielenie do dwóch różnych tablic ze względu na rezerwacje
for i in array{
    if (i.state == "Reserved"){
        arrayReserved.append(i)
    } else {
        arrayNotReserved.append(i)
    }
}

print("Reserved list:")
for i in arrayReserved{
    i.description()
}

print("Not reserved list:")
for i in arrayNotReserved{
    i.description()
}
