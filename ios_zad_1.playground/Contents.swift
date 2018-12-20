enum Reservation{
    case Reserved, NotReserved
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
        let status = checkReservation(state: state)
        (state == .Reserved) ? print("\(name) - \(status) - \(time)") : print("\(name) - \(status)")
    }
    //sprawdza stan rezerwacji sali i zwraca stringa
    func checkReservation(state: Reservation) -> String{
        switch state{
        case .Reserved:
            return "reserved"
        case .NotReserved:
            return "not reserved"
        }
    }
}

var arrayReserved = [SalaKonf]() //tablica z salami zarezerwowanymi
var arrayNotReserved = [SalaKonf]() //tablica z salami niezarezerwowanymi
var array = [SalaKonf]() // tablica ze wszystkimi salami

//dodanie 10 sal do tablicy array
array.append(SalaKonf(newName: "Sala nr 1", reservation: .Reserved, t: 60))
array.append(SalaKonf(newName: "Sala nr 2", reservation: .NotReserved))
array.append(SalaKonf(newName: "Sala nr 3", reservation: .Reserved, t: 180))
array.append(SalaKonf(newName: "Sala nr 4", reservation: .Reserved, t: 120))
array.append(SalaKonf(newName: "Sala nr 5", reservation: .NotReserved))
array.append(SalaKonf(newName: "Sala nr 6", reservation: .Reserved, t: 30))
array.append(SalaKonf(newName: "Sala nr 7", reservation: .Reserved, t: 90))
array.append(SalaKonf(newName: "Sala nr 8", reservation: .NotReserved))
array.append(SalaKonf(newName: "Sala nr 9", reservation: .NotReserved))
array.append(SalaKonf(newName: "Sala nr 10", reservation: .Reserved, t: 300))

//rozdzielenie do dwóch różnych tablic ze względu na rezerwacje
for i in array{
    (i.state == .Reserved) ? arrayReserved.append(i) : arrayNotReserved.append(i)
}
//wyswietlenie calej listy zarezerwowanych sal
print("Reserved list:")
for i in arrayReserved{
    i.description()
}
//wyswietlenie calej listy niezarezerwowanych sal
print("\nNot reserved list:")
for i in arrayNotReserved{
    i.description()
}

