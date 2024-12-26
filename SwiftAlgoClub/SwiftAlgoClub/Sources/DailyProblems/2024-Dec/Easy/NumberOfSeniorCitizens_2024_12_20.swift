//
//  NumberOfSeniorCitizens_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

class NumberOfSeniorCitizens_2024_12_20 {
    
    func countSeniorsWhoAre(olderThan ageRange: Int, _ details: [String]) -> Int {
        var seniorCitizens: Int = 0
        for detail in details {
            let startIndex = detail.index(detail.startIndex, offsetBy: 11)
            let endIndex = detail.index(startIndex, offsetBy: 2)
            let ageNumber = Int(detail[startIndex..<endIndex]) ?? 0
            seniorCitizens = ageNumber > ageRange ? seniorCitizens + 1 : seniorCitizens
    }
    return seniorCitizens
}
}
