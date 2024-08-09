//
//  Prog_query2.swift
//  Algorithm
//
//  Created by 방현석 on 8/6/24.
//

import Foundation



func solution(_ strArr:[String]) -> [String] {
    var arr = strArr

    for i in 0 ... strArr.count - 1 {

        arr[i] = i % 2 == 0 ? strArr[i].lowercased() : strArr[i].uppercased()
    }
//    let resultArr = strArr.enumerated().map { (index, element) in
//        index % 2 == 0 ? element.lowercased() : element.uppercased()
//    }
    
    return arr
}

let input = ["AAA","BBB","CCC","DDD"]
let alp = "p"

let input2 = ["aBc","AbC"]
let alp2 = "x"
print(solution(input))
