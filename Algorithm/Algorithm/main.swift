//
//  Prog_Last.swift
//  Algorithm
//
//  Created by 방현석 on 7/30/24.
//

import Foundation

// MARK: 마지막 두 원소


/**
 
 - 문제
 정수 리스트 num_list가 주어질 때, 마지막 원소가 그전 원소보다 크면 마지막 원소에서 그전 원소를 뺀 값을 마지막 원소가 그전 원소보다 크지 않다면 마지막 원소를 두 배한 값을 추가하여 return하도록 solution 함수를 완성해주세요.
 
 
 제한사항
 2 ≤ num_list의 길이 ≤ 10
 1 ≤ num_list의 원소 ≤ 9

 
 - 입력
 <#입력 설명#>
 
 - 출력
 <#출력 설명#>
 
 - 예제1
 - 예제 입력 :
 [2, 1, 6]
 - 예제 출력 :
 [2, 1, 6, 5]

 
 - 예제2
 - 예제 입력 :
 [5, 2, 1, 7, 5]
 - 예제 출력 :
 [5, 2, 1, 7, 5, 10]
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - 아래 조건에 따라 배열에 추가
/// - 마지막 원소가 그 전 원소보다 큰 경우
///     - 마지막 - 그전 원소
/// - 마지막 원소가 그 전 원소보다 작은 경우
///     - 마지막 원소 X 2
///
/// 2. 시간복잡도
/// 3. 자료구조
import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var arr = num_list
    let count = arr.count
    var tempNum = 0
    if let lastNum  = arr.last {
        let beforNum = arr[count-2]
        let compare = lastNum - beforNum
        if  compare > 0 {
            tempNum = compare
        } else {
            tempNum = lastNum * 2
        }
    }
    
    arr.append(tempNum)
    return arr
}
let input = [5, 2, 1, 7, 5]
print(solution(input))


// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
