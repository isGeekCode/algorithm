////
////  Prog_42883.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
///**
// 이 문제는 주어진 배열 [B, G, N]을 입력받아 B명의 남자와 G명의 여자 중에서 N명의 사람을 선택하여 남자와 여자를 짝짓는 방법의 수를 계산하는 문제입니다. 주어진 조건을 만족하는 짝짓기 방법의 수를 반환해야 합니다.
//
// B: 남자의 수
// G: 여자의 수
// N: 짝지을 사람의 수 (항상 짝수)
// 문제 해결 방법
// 조합 계산:
//
// 특정 수의 남자와 여자를 선택하는 조합의 수를 계산합니다.
// 주어진 조합 공식 C(n, k) = n! / (k! * (n - k)!)을 사용하여 계산합니다.
// 짝짓기 방법 계산:
//
// 선택한 남자와 여자를 짝지을 수 있는 방법의 수를 계산합니다.
//
// */
//
//
//import Foundation
//
//
////func combination(_ n: Int, _ k: Int) -> Int {
////    if k > n { return 0 }
////    var numerator = 1
////    var denominator = 1
////    for i in 0..<k {
////        numerator *= (n - i)
////        denominator *= (i + 1)
////    }
////    return numerator / denominator
////}
////
////
////func ArrayChallenge(_ arr: [Int]) -> Int {
////    let B = arr[0] // 남자의 수
////    let G = arr[1] // 여자의 수
////    let N = arr[2] // 짝지을 사람의 수
////
////    // 짝을 지을 남자와 여자의 수
////    let varOcg = N / 2 // __define-ocg__
////
////    // 남자와 여자를 선택하는 조합 계산
////    let boysCombination = combination(B, varOcg)
////    let girlsCombination = combination(G, varOcg)
////    print("boy: \(boysCombination)")
////    print("girl: \(girlsCombination)")
////
////    // 선택된 남자와 여자를 짝지을 수 있는 방법
////    let result = boysCombination * girlsCombination
////
////    return result
////}
////
////// 입력을 받고 유효성 검사 및 변환
////if let input = readLine() {
////    // 문자열을 대괄호와 공백을 제거한 후, 쉼표로 구분하여 배열로 변환
////    let trimmedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)
////    let filteredInput = trimmedInput.filter { "0123456789,".contains($0) }
////    let numArray = filteredInput.split(separator: ",").compactMap { Int($0) }
////
////    // 입력값이 정확히 3개인지 확인
////    if numArray.count == 3 {
////        // 유효한 입력이므로 ArrayChallenge 호출
////        print(ArrayChallenge(numArray))
////    } else {
////        // 입력값이 유효하지 않음을 출력
////        print("Invalid input. Please provide exactly three integers separated by commas.")
////    }
////} else {
////    // 입력이 nil일 경우
////    print("No input provided.")
////}
//
//// 조합을 계산하는 함수
//func combination(_ n: Int, _ k: Int) -> Int {
//    if k > n { return 0 }
//    var numerator = 1
//    var denominator = 1
//    for i in 0..<k {
//        numerator *= (n - i)
//        denominator *= (i + 1)
//    }
//    return numerator / denominator
//}
//
//// 팩토리얼 계산 함수
//func factorial(_ n: Int) -> Int {
//    return (1...n).reduce(1, *)
//}
//
//// 주어진 배열로부터 남자와 여자 짝짓기의 경우의 수를 계산하는 함수
//func ArrayChallenge(_ arr: [Int]) -> Int {
//    let B = arr[0] // 남자의 수
//    let G = arr[1] // 여자의 수
//    let N = arr[2] // 짝지을 사람의 수
//    
//    // 짝을 지을 남자와 여자의 수
//    let varOcg = N / 2 // __define-ocg__
//
//    // 남자와 여자를 선택하는 조합 계산
//    let boysCombination = combination(B, varOcg)
//    let girlsCombination = combination(G, varOcg)
//
//    // 선택된 남자와 여자를 짝지을 수 있는 방법 (varOcg!을 곱해야 함)
//    let result = boysCombination * girlsCombination * factorial(varOcg)
//    
//    return result
//}
//
//// 입력을 받고 유효성 검사 및 변환
//if let input = readLine() {
//    // 문자열을 대괄호와 공백을 제거한 후, 쉼표로 구분하여 배열로 변환
//    let trimmedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)
//    let filteredInput = trimmedInput.filter { "0123456789,".contains($0) }
//    let numArray = filteredInput.split(separator: ",").compactMap { Int($0) }
//
//    // 입력값이 정확히 3개인지 확인
//    if numArray.count == 3 {
//        // 유효한 입력이므로 ArrayChallenge 호출
//        print(ArrayChallenge(numArray))
//    } else {
//        // 입력값이 유효하지 않음을 출력
//        print("Invalid input")
//    }
//} else {
//    // 입력이 nil일 경우
//    print("No input")
//}
