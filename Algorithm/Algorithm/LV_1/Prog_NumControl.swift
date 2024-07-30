////
////  Prog_NumControl.swift
////  Algorithm
////
////  Created by 방현석 on 7/30/24.
////
//
//import Foundation
//
//// MARK: <#제목#>
//
//
///**
// 
// - 문제
// 정수 배열 numLog가 주어집니다. 처음에 numLog[0]에서 부터 시작해 "w", "a", "s", "d"로 이루어진 문자열을 입력으로 받아 순서대로 다음과 같은 조작을 했다고 합시다.
//
// "w" : 수에 1을 더한다.
// "s" : 수에 1을 뺀다.
// "d" : 수에 10을 더한다.
// "a" : 수에 10을 뺀다.
// 그리고 매번 조작을 할 때마다 결괏값을 기록한 정수 배열이 numLog입니다. 즉, numLog[i]는 numLog[0]로부터 총 i번의 조작을 가한 결과가 저장되어 있습니다.
//
// 주어진 정수 배열 numLog에 대해 조작을 위해 입력받은 문자열을 return 하는 solution 함수를 완성해 주세요.
//
// 제한사항
// 2 ≤ numLog의 길이 ≤ 100,000
// -100,000 ≤ numLog[0] ≤ 100,000
// 1 ≤ i ≤ numLog의 길이인 모든 i에 대해 |numLog[i] - numLog[i - 1]|의 값은 1 또는 10입니다.
//
//
// - 예제 입력 :
// [0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]
// 
// 
// - 예제 출력 :
// "wsdawsdassw"
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// 2. 시간복잡도
///// 3. 자료구조
//import Foundation
//
//func solution(_ numLog:[Int]) -> String {
//    var result = ""
//    
//    for i in 1 ..< numLog.count {
//        let current = numLog[i]
//        let before = numLog[i-1]
//        var value = ""
//        switch current - before {
//        case 1 :
//            value = "w"
//        case -1 :
//            value = "s"
//        case 10 :
//            value = "d"
//        case -10:
//            value = "a"
//        default:
//            print("default")
//        }
//        result += value
//    }
//    return result
//}
//
//let input = [0, 1, 0, 10, 0, 1, 0, 10, 0, -1, -2, -1]
//print(solution(input))
//
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
