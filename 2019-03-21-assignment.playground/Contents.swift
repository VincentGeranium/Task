/*:
 ## Today Problem Solve
 */
/*:
 #### 1번 문제
 */



class Animal {
    var brain: Bool = true
    var legs: Int = 0
}


class Human: Animal {
    override var legs: Int {
        get {
            return super.legs
        }
        
        set {
            super.legs = newValue
        }
    }
}

let test1: Human = Human()
test1.legs
test1.legs = 2
test1.legs
test1.brain

class Pet: Animal {
    var fleas: Int = 0
    override var legs: Int {
        get {
            return super.legs
        }
        set(petNewValue) {
            super.legs = petNewValue
        }
    }
}

let testPet: Pet = Pet()
testPet.fleas
testPet.brain
testPet.legs
testPet.legs = 4
testPet.legs

class Dog: Pet {
    override var fleas: Int {
        get {
            return super.fleas
        }
        set {
            super.fleas = newValue
        }
    }
}

let testDog: Dog = Dog()
testDog.brain
testDog.legs = 4
testDog.legs
testDog.fleas
testDog.fleas = 8
testDog.fleas

class Cat: Pet {
    
}

let testCat: Cat = Cat()
testCat.brain
testCat.legs
testCat.legs = 4
testCat.legs
testCat.fleas
testCat.fleas = 4
testCat.fleas


/*:
 #### 2번 문제
 */

class Square {
    var s: Double
    var perimeter: Double = 0.0
    var area: Double = 0.0
    
    init(s: Double) {
        self.s = s
        
    }
    
    func perimeterMethod() -> Double {
        perimeter = 4 * s
        print("Square의 둘레는 \(perimeter) 입니다")
        return perimeter
    }
    
    func areaMethod() -> Double {
        area = s * s
        print("Square의 넓이는 \(area) 입니다")
        return area
    }
}

let test: Square = Square(s: 3.0)
test.areaMethod()
test.perimeterMethod()

let test2: Square = Square(s: 5.0)
test2.areaMethod()
test2.perimeterMethod()

class Rectangle {
    var l: Double
    var w: Double
    var area: Double = 0.0
    var perimeter: Double = 0.0
    
    init(w: Double, l: Double) {
        self.w = w
        self.l = l
    }
    
    func perimeterMethod() -> Double {
        perimeter = (2 * l) + (2 * w)
        print("Rectangle의 둘레는 \(perimeter) 입니다")
        return perimeter
    }
    
    func areaMethod() -> Double {
        area = l * w
        print("Rectangle의 넓이는 \(area) 입니다")
        return area
    }
}

let testRec: Rectangle = Rectangle(w: 3.0, l: 10.0)
testRec.areaMethod()
testRec.perimeterMethod()

