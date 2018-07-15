//: Playground - noun: a place where people can play

import UIKit

//Objective-Oriented Swift
//1.Declare class ​Animal​ with property ​gender​, and method ​eat()​. Data type of gender should be enum Gender as list below. Call eat() method will print ​I eat everything!

enum Gender{
    case male
    case female
    case undefined
}

class Animal{
    var gender: Gender
    func eat() {
        print("I eat everything!")
    }
    init(gender: Gender) {
        self.gender=gender
    }
    
}
// 這裡如何使用 gender
let test = Animal.init(gender: Gender.female) //  這裏不能直接打 male female 要用 . 去呼叫  可以把 Gender.female 打成 .female

//2.Declare class ​Elephant​, ​Tiger​, ​Horse​ inherit from Animal. Override the eat method to print what they usually eat.

class Elephant: Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    override func eat() {
        print("I eat fruit")
    }
}

class Tiger: Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    override func eat() {
        print("I eat a lot of meat")
    }
}

class Horse: Animal {
    override init(gender: Gender) {
        super.init(gender: gender)
    }
    override func eat() {
        print("I eat grass")
    }
}

class Zoo {
    var weeklyHot : Animal
    init(weeklyHot: Animal ) {
        self.weeklyHot = weeklyHot
    }

}

let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .male)

//print(elephant.eat())    //印不出吃什麼 ＷＨＹ？

let horse = Horse(gender: .undefined)

let zoo = Zoo(weeklyHot: Tiger(gender: Gender.male))

//print(zoo.weeklyHot.eat()) //印不出東西
//tiger.eat()  //不可以再使用一次 print 現在是在呼叫方法
//
//print(zoo.weeklyHot.gender) //印出性別

zoo.weeklyHot = tiger   //這要幹嘛？--  改變本週熱門

//print("zoo測試\(zoo.weeklyHot)") // 錯誤無解

zoo.weeklyHot = horse   //這要幹嘛？ 改變本週熱門
zoo.weeklyHot           // 這時候本週熱門變成 horse

zoo.weeklyHot = elephant    //這要幹嘛？ 改變本週熱門

//4. In this chapter, we learn the new things about "struct,class,instance,Self"

//5. I think the big differences are
        //1.           struct is value type (值型別)  class is reference type (參考型別)
        //2.           struct cannot inherit but class can do that
        //3.           In struct , we can ignore the “init”, but in class ,we should declare what “init” is.





//6 What is the difference between ​instance method​ and ​type method​ ?
// 我們用  instance method 把 函數裡面的東西實體化出來 存在多個時需要個別實體化 因為此時我們也會再給一些參數 。 而type method​ 則是我們可以直接呼叫他來使用不用在存到一個實體裡面，我覺得算是直接呼叫一個裡面的方法來使用



//7 we can use “Initilizer” to give the struct or class what the default value is,we also can use”init” to deal with Designated Initializers and Convenience Initializers.  .But in struct , if we do not use “init”, the complier will give it in the background.



//8 We can use self in the function to point itself, sometimes we are confused about the “Local and External Parameter name ”, we can use “self” to mean which we want. Furthermore , we can use “self” to get clear about property ad argument in the initializer .

//9 value type (值型別-新舊兩值不互相影響)-Create or Copy the new instance in the memory
//  reference type (參考型別-存在記憶體空間的位置同會互相影響)-change the value in the memory



//Enumerations and Optionals in Swift

//中油98    32.60
//中油95    30.60
//中油92    29.10
//中油柴油    27.30
enum Gasoline : String {     //為何這裡也要有 string 沒有會報錯  -- 是否因為下面的 rawvalue "95" 等等 是string

    case gas92 = "92"                   //不能直接 case 92會出錯  如何才可以直接 case 92
    case gas95 = "95"
    case gas98 = "98"
    case diesel = "diesel"
    func getPrice() -> Double{
          switch self {
            case .gas92 : return 29.10
            case .gas95 : return 30.60
            case .gas98 : return 32.60
            case .diesel : return 27.30
    }
  }
}
    
//• Please establish ​raw value​ for ​Gasoline.​ The data type of raw value should be String. For example, ​Gasoline.92.rawValue​ should be “92”.

let gas92 = Gasoline.gas92.rawValue
    print(gas92)
let gas98Price = Gasoline.gas98.getPrice()
print(gas98Price)

//Please explain what is enum’s ​associate value​ and how to use it.

// 下面測試
//enum Compass : Int{
//    case north = 1
//    case south = 2
//    case east = 3
//    case west = 4
//}
//
//let direction = Compass(rawValue: 2)
//print(direction!)   // 錯誤  WHY? 要加驚嘆號才可以強制印出



//​1-4 Please explain what is enum’s ​associate value​ and how to use it.
// in the enum,we can use Associated Value to declare what value we want to use by default , String,Double,Int like these.





// • People would like to have pets, but not everyone could have one. Declare a class ​Pet with ​name​ property and a class ​People​ with ​pet​ property which will store a Pet instance or nil​. Please try to figure out what data type is suitable for these properties in Pet and People.

class Pet {
    var name : String
    init(name : String) {
        self.name=name
    }
    
}

class People {
    var pet : Pet?
}


//• Please create a People instance and use ​guard let​ to unwrap the ​pet​ property.


let henry = People()
//henry.pet = Pet(name: "cat")

func henryPetTest () -> String {
    guard let henryPet = henry.pet?.name else {
        return "henry 沒有寵物"

    }
    return "henry的寵物是 \(henryPet)"
}

print(henryPetTest())

//guard let henryPet = henry.pet?.name
//    else {
//        fatalError("henry沒有寵物") // 沒值會直接爆掉
//        }
//print(henryPet)
 // return  print("heddd")

//guard let result1 = frank.pet?.name
//        print(frank.pet?.name )
//         else { print("沒有寵物") }


//• Please create another People instance and use ​if let​ to unwrap the ​pet​ property.

let frank = People()  //實例化
frank.pet = Pet.init(name: "寶貝兔兔狗")  //實例化 .init 可以省略 這行要是註解 會變成沒有寵物
//frank.pet?.name   這樣才是會印出名字

if let frankPet = frank.pet?.name {
    print("frank 的寵物為 \(frankPet)")
} else {
    print("frank沒有寵物")
}


//Protocol in Swift
//1.Declare a struct ​Person​ with a ​name​ property type String, a protocol name ​PoliceMan​. There is only one method ​arrestCriminals​ with no argument and return void in the protocol.

protocol PoliceMan{
    func arrestCriminals() //不能有body!
}

protocol ToolMan {
    func fixComputer()
}


struct Person: PoliceMan {
    func arrestCriminals() {
        
    }
   var name:String
   var toolMan: ToolMan
}
//3.Declare a protocol ​ToolMan​ with a method ​fixComputer​, no argument and return void.


//4.Add a property ​toolMan​ to struct Person with data type ​ToolMan

//5.Declare a struct named ​Engineer​ conform to ​ToolMan​ protocol.

struct  Engineer:   ToolMan{
    func fixComputer() {
        
    }
    
}

//6.Create a Person instance with name Steven. Please create the relative data you need to declare this instance.

let engineer = Engineer() // 實體化
let result = Person(name: "Steven", toolMan: engineer)  //為何填engineer??  因為這裡要填的東西一定要符合 toolMan: ToolMan-protocol
// struct的 Engineer  已經用 engineer 實體化 所以可以填 engineer 而且他有 follow protocol

//print(person)  // 不知道在印什麼-- Ans 這樣是在印一個 struct
print(result.toolMan.fixComputer()) // 但現在裡面是空的


//Error Handling in Swift
//See the code above, just copy the code and paste in the playground file. There is an error inside the code.
//1.
//Please solve the error by adding addition code in the file. Do not remove or modify the code above.
//2.
//Call ​guess(number:)​ and pass 20 as argument.

enum    GuessNumberGameError:Error {  //add :Error
    case wrongNumber
}


class GuessNumberGame {    //要自己重打 從pdf複製下來會錯誤
    var targetNumber = 10
    func guess(number : Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

//let guessNumberGame = GuessNumberGame()
 //  try guessNumberGame.guess(number: 20)
let guessNumberGame = GuessNumberGame()
do  {
        try guessNumberGame.guess(number: 20) //打 string 或 double不會跳最下面一行的錯誤  why ?-- 編譯器會直接錯誤 並不會跳到下面的未預期錯誤  上面已經限定是 Int
}
catch GuessNumberGameError.wrongNumber {
        print("猜錯數字了")
}
catch {
        print("未預期的錯誤")
}

