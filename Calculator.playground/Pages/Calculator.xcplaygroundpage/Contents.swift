import UIKit

class Calculator {
    
    private var operation: AbstractOperation?
    
    private var firstInput: Double?
    private var secondInput: Double?
    
    // 사용할 연산자 인스턴스 변수 할당
    func setOperation(to operation: AbstractOperation) {
        self.operation = operation
    }
    
    // 첫 번째 입력 값 변수에 할당
    func setFirst(to input: Double) {
        if firstInput == nil && secondInput == nil {
            firstInput = input
        }
    }
    
    // 두 번째 입력 값 변수에 할당
    func setSecond(to input: Double) {
        if secondInput == nil && firstInput != nil{
            secondInput = input
        }
    }
    
    // 등호 역할, 결과값 프린트
    func getResult() {
        guard let operation, let firstInput, let secondInput else {
            print("입력이 잘못되었습니다.")
            return
        }
        let result = operation.operate(firstInput, with: secondInput)
        
        print("\(firstInput) \(operation.symbol) \(secondInput) = \(result)")
        
        self.firstInput = nil
        self.secondInput = nil
        self.operation = nil
    }
}

let calculator = Calculator()

calculator.setFirst(to: 2) // 첫 번째 숫자 입력
calculator.setOperation(to: AddOperation()) // 연산자 입력
calculator.setSecond(to: 10) // 두 번째 숫자 입력
calculator.getResult() // = 등호 입력

calculator.setFirst(to: 2) // 첫 번째 숫자 입력
calculator.setOperation(to: SubstractOperation()) // 연산자 입력
calculator.setSecond(to: 10) // 두 번째 숫자 입력
calculator.getResult() // = 등호 입력













