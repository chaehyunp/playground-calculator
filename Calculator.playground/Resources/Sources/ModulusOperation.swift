//
//  ModulusOperation.swift
//  
//
//  Created by CHYUN on 10/31/24.
//

class ModulusOperation: AbstractOperation {
    func operate(_ firstInput: Int, with secondInput: Int) -> Int {
        return firstInput % secondInput
    }
}