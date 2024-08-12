//
//  Prog_query2.swift
//  Algorithm
//
//  Created by 방현석 on 8/6/24.
//

import Foundation


func solution(_ numbers:[Int], _ n:Int) -> Int {
    var answer = 0
    for num in numbers {
        answer += num
        if answer > n {
            break
        }
    }
    return answer
}


func solution(_ numbers:[Int], _ n:Int) -> Int {
    var answer = 0
    numbers.forEach { $0 + $1 }
}


let input = [34, 5, 71, 29, 100, 34] //139
let n = 123
let input2 = [58, 44, 27, 10, 100] //239
let n2 = 139
        
        
print(solution(input2, n2))
