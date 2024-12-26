//
//  FinalValueOfVariable_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

class FinalValueOfVariable_2024_12_20 {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var initialValue: Int = 0
        
        guard !operations.isEmpty else {
            return initialValue
        }

        for opr in operations {
            switch opr {
                case let str where str.hasPrefix("+") || str.hasSuffix("+"):
                initialValue += 1
                case let str where str.hasPrefix("-") || str.hasSuffix("-"):
                initialValue -= 1
                default:
                break
            }
        }
        return initialValue
    }
}
