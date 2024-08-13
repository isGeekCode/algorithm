//
//  Prog_query4.swift
//  Algorithm
//
//  Created by 방현석 on 8/13/24.
//

// MARK: 수열과 구간 쿼리 4



/**
 
 - 문제
 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [s, e, k] 꼴입니다.

 각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 i가 k의 배수이면 arr[i]에 1을 더합니다.

 위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.
 
 - 예제 입력 :
 arr = [0, 1, 2, 4, 3]
 queries = [[0, 4, 1],[0, 3, 2],[0, 3, 3]]
 
 - 예제 출력 :
 [3, 2, 4, 6, 4]
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - quries 에서 배열을 꺼낸다.
///     - index 를 s...e로 지정
///     - index가 k의 배수이면  arr[index] +1
/// 2. 시간복잡도
/// 3. 자료구조
///

//import Foundation
//
//func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
//    var tempArr = arr
//    for query in queries {
//        let (s, e, k) = (query[0], query[1], query[2])
//        for (i, num ) in tempArr.enumerated() {
//            if i >= s && i <= e && i % k == 0 {
//                tempArr[i] = num + 1
//            }
//        }
//    }
//    return tempArr
//}
//
//let arr = [0, 1, 2, 4, 3]
//let queries = [[0, 4, 1],[0, 3, 2],[0, 3, 3]]
//
//print(solution(arr, queries))
// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
