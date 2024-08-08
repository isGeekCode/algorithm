////
////  Prog_query3.swift
////  Algorithm
////
////  Created by 방현석 on 7/31/24.
////
//
//// MARK: 수열과 구간 쿼리3
//
//
///**
// 
// - 문제
// 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [i, j] 꼴입니다.
//
// 각 query마다 순서대로 arr[i]의 값과 arr[j]의 값을 서로 바꿉니다.
//
// 위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.
// 
// 제한사항
// 1 ≤ arr의 길이 ≤ 1,000
// 0 ≤ arr의 원소 ≤ 1,000,000
// 1 ≤ queries의 길이 ≤ 1,000
// 0 ≤ i < j < arr의 길이
//
//
// 
// - 예제 입력 :
// arr
// [0, 1, 2, 3, 4]
// 
// queries
// [[0, 3],[1, 2],[1, 4]]
// 
// - 출력
// result
// 
// [3, 4, 1, 0, 2]
// 
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// - query를 순회하며 query[i][0]과 query[i][1]을 추출하여 arr갱신
///// 2. 시간복잡도
///// 3. 자료구조
///// - tempArr : [Int]  처리할 배열 , 처리한 이후의 값을 갱신
//
//import Foundation
//
//func aSolution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
//    var originArr = arr
//    for q in queries {
//        let prev = q[0]
//        let last = q[1]
//        // 해당위치의 원본 값
//        let willSetNumArr = [originArr[prev], originArr[last]]
//        originArr[last] = willSetNumArr[0]
//        originArr[prev] = willSetNumArr[1]
//    }
//    return originArr
//}
//
//
//func bSolution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
//    var resultArr = arr // 배열 사본을 생성
//    for query in queries {
//        let i = query[0]
//        let j = query[1]
//        (resultArr[i], resultArr[j]) = (resultArr[j], resultArr[i]) // 튜플을 사용하여 요소 교환
//    }
//    return resultArr
//}
//
//func cSolution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
//    var resultArr = arr // 배열 사본을 생성
//    for query in queries {
//        let i = query[0]
//        let j = query[1]
//        resultArr.swapAt(i, j) // swapAt을 사용하여 위치 교환
//    }
//    return resultArr
//}
//
//
//let inputArr = [0, 1, 2, 3, 4]
//let inputQuery = [[0, 3],[1, 2],[1, 4]]
////print(cSolution(inputArr, inputQuery))
//
//let arr = Array(repeating: "T", count: 4)
//print(arr)
//// MARK: Insight
///*
// <#text#>
// */
//
//
//// MARK: Other Idea
///*
// <#text#>
// */
//
//
//// MARK: 다른 답 중 인상적인 답
