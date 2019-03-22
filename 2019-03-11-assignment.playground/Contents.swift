/********************************************
[ 과제 ]
- 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
- 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
- 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
- 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
- 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
- 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
- 제출 : 수요일 밤까지 과제 제출용 폴더에 Playground 파일 업로드
- 정답 풀이는 목요일 전달
********************************************/

// 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func getInfo(name: String, age: Int) {
    print("I'm \(name) and I'm \(age) old")
}

getInfo(name: "Vincent", age: 77)

// 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
func getNumber(number: Int) -> Int{
    return number * 2
}

getNumber(number: 4)

// 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
func getNumbers(number1: Int, number2: Int = 10) -> Int {
    return number1 * number2
}

getNumbers(number1: 3, number2: 2)
getNumbers(number1: 2)

// 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
var totalScore: Double = 0
func subjectAverage(subject1: Double, subject2: Double, subject3: Double, subject4: Double) -> Double {
    totalScore = subject1 + subject2 + subject3 + subject4
    return (totalScore)/4.0
}

subjectAverage(subject1: 60.5, subject2: 70, subject3: 35, subject4: 65.5)

// 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
func grades(score: Double) -> String {
    if score >= 90 {
        return "A"
    } else if score < 90 && score >= 80 {
        return "B"
    } else if score < 80 && score >= 70 {
        return "C"
    } else {
        return "F"
    }
}

grades(score: 100)
grades(score: 89)
grades(score: 79)
grades(score: 69)

// 점수(숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
var avg: Double = 0.0
func getGpa(subjKor: Double, subjEng: Double, subjCs: Double) -> String {
    avg = (subjKor + subjEng + subjCs)/3.0
    if avg >= 90 {
        return "A"
    } else if avg >= 80 && avg < 90 {
        return "B"
    } else if avg >= 70 && avg < 80 {
        return "C"
    } else {
        return "F"
    }
}

getGpa(subjKor: 50, subjEng: 70.5, subjCs: 40)
getGpa(subjKor: 70, subjEng: 80, subjCs: 100)
