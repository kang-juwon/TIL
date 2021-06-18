
struct Town {
    // Town's Properties
    let name : String // townname
    var citizens : [String] // citizens, array
    var resources : [String : Int] // resources, dictionary
    
    init(<#parameters#>) {
        <#statements#>
    }
    
    // Town's Behavior, 구조체와 관련된 함수 == method
    func fortify() {
        print("Defences increased!")
    }
}

// Town의 사본을 만들어서 myTown 변수에 보관
// myTown을 사용하고, myTown의 속성에 접근할 수 있게 된다
var myTown = Town()

// .을 사용해서 myTown의 속성에 접근할 수 있다.
print(myTown.citizens)
print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")

// myTown에 새로운 항목 추가 -- append
myTown.citizens.append("Gaga")

// 항목의 갯수 count -- count
print(myTown.citizens.count)

