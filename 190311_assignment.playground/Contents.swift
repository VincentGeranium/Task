/********************************************************************************************
 - 1. 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 - 2. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 - 3. 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 - 4. 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
 - 5. 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
 - 6. 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
 *********************************************************************************************/



// 1
func getAgeName(age: Int, name: String) -> String {
    return "Hi I'm \(name) , \(age) year old"
}

getAgeName(age: 55, name: "Jun")


// 2
func getNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

getNumber(number: 23)
getNumber(number: 42)

// 3
func numberMulti(num1: Int, num2: Int = 10) -> Int {
    return num2 * num1
}

numberMulti(num1: 2)

// 4
func scoreAverage(score1: Double, score2: Double, score3: Double, score4: Double) -> Double {
    var total: Double = score1 + score2 + score3 + score4
    var answer: Double = total / 4
    return answer
}

scoreAverage(score1: 50.4, score2: 35.2, score3: 70.3, score4: 40.2)

// 5
func getScore(yourScore: Double) -> String {
    
    switch yourScore {
    case 90.0...:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    default:
        return "F"
    }
}

getScore(yourScore: 91)
getScore(yourScore: 89)
getScore(yourScore: 79)
getScore(yourScore: 69)

func yourScore(scoreNum1: Double, scoreNum2: Double, scoreNum3: Double, scoreNum4: Double) -> String {
    var totalScore = (scoreNum1 + scoreNum2 + scoreNum3 + scoreNum4)
    var yourAverage = totalScore / 4
    
    switch yourAverage {
    case 90.0...:
        return "A"
    case 80.0..<90.0:
        return "B"
    case 70.0..<80.0:
        return "C"
    default:
        return "F"
    }
}

yourScore(scoreNum1: 78.3, scoreNum2: 40.3, scoreNum3: 56.7, scoreNum4: 78.0)
yourScore(scoreNum1: 70.5, scoreNum2: 70.4, scoreNum3: 70.3, scoreNum4: 70.0)
yourScore(scoreNum1: 80.0, scoreNum2: 82.0, scoreNum3: 81.3, scoreNum4: 81.0)
yourScore(scoreNum1: 90.0, scoreNum2: 92.0, scoreNum3: 97.0, scoreNum4: 93.0)
