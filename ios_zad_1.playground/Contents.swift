enum Reservation{
    case Reserved
    case NotReserved
}

class SalaKonf{
    var name:String = ""
    var state:Reservation
    var time:Int = 0
    
    //inicjaliacja z rezerwacja
    init(newName:String, reservation:Reservation, t:Int){
        name = newName
        state = reservation
        time = t
    }
    //inicjalizacja bez rezerwacji
    init(newName:String, reservation:Reservation){
        name = newName
        state = reservation
        time = 0
    }
    //wyswietlenie name - state - time w przypadku, gdy sala jest zarezerwowana
    //w przeciwnym razie wyswietlenie name - state
    func description(){
        (state == .Reserved) ? print("\(name) - \(state) - \(time)") : print("\(name) - \(state)")
    }
}

var arrayReserved = [SalaKonf]() //tablica z salami zarezerwowanymi
var arrayNotReserved = [SalaKonf]() //tablica z salami niezarezerwowanymi
var array = [SalaKonf]() // tablica ze wszystkimi salami

var s1 = SalaKonf(newName: "Sala nr 1", reservation: .Reserved, t: 60)
array.append(s1)
var s2 = SalaKonf(newName: "Sala nr 2", reservation: .NotReserved)
array.append(s2)
var s3 = SalaKonf(newName: "Sala nr 3", reservation: .Reserved, t: 180)
array.append(s3)
var s4 = SalaKonf(newName: "Sala nr 4", reservation: .Reserved, t: 120)
array.append(s4)
var s5 = SalaKonf(newName: "Sala nr 5", reservation: .NotReserved)
array.append(s5)
var s6 = SalaKonf(newName: "Sala nr 6", reservation: .Reserved, t: 30)
array.append(s6)
var s7 = SalaKonf(newName: "Sala nr 7", reservation: .Reserved, t: 90)
array.append(s7)
var s8 = SalaKonf(newName: "Sala nr 8", reservation: .NotReserved)
array.append(s8)
var s9 = SalaKonf(newName: "Sala nr 9", reservation: .NotReserved)
array.append(s9)
var s10 = SalaKonf(newName: "Sala nr 10", reservation: .Reserved, t: 300)
array.append(s10)

//rozdzielenie do dwóch różnych tablic ze względu na rezerwacje
for i in array{
    if (i.state == .Reserved){
        arrayReserved.append(i)
        
    } else {
        arrayNotReserved.append(i)
    }
}
//wyswietlenie calej listy zarezerwowanych sal
print("Reserved list:")
for i in arrayReserved{
    i.description()
}
//wyswietlenie calej listy niezarezerwowanych sal
print("Not reserved list:")
for i in arrayNotReserved{
    i.description()
}

