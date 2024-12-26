//
//  NumberOfSeniorCitizens_2024_12_20.swift
//  SwiftAlgoClub
//
//  Created by Divyansh Bhardwaj on 20/12/24.
//

//Problem Description:
//You are given a 0-indexed array of strings details. Each element of details provides information about a given passenger compressed into a string of length 15. The system is such that:
//The first ten characters consist of the phone number of passengers.
//The next character denotes the gender of the person.
//The following two characters are used to indicate the age of the person.
//The last two characters determine the seat allotted to that person.
//Return the number of passengers who are strictly more than 60 years old.

// https://leetcode.com/problems/number-of-senior-citizens/description/

struct NumberOfSeniorCitizens_2024_12_20 {
    
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
