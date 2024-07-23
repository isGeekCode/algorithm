////
////  Prog_42883.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
//import Foundation
//
//// MARK:
//
//
///**
// 
// - 문제
// 어떤 숫자에서 k개의 수를 제거했으 ㄹ때 얻을 수 있는 가장 큰 숫자를 구하려한다.
// 예를 들어, 숫자 1924에서 수 두개를 제거하면 [19,12,14,92, 94,24]를 만들 수 있다. 이중 가장 큰 숫자는 94
// 
// 문자열 형식으로 숫자 number와 제거할 수의 개수 k가 solution함수의 매개변수로 주어짐
// number에서 k개의 수를 제거했을 때, 만들 수 있는 수중가장 큰 숫자를 문자열 형태로 리턴하는 solution함수 완성
// 
// - 제한 조건
// - nubmer는 2자리 이상, 1000000자리 이하 자연수
// - k는 1이상 number의 자릿수 의 미만 자연수
// 
// - 예제1
//
// - 입력
// "1924"
// 
// - k
// 2
// - return
// "94"
// 
// - 예제2
//
// - 입력
// "1231234"
// 
// - k
// 3
// - return
// "3234"
// 
// 
// - 예제3
// - 입력
// "4177252841"
// 
// - k
// 4
// - return
// "775841"
//
//// MARK: 내 답
///// 1. 아이디어
///// 2. 시간복잡도
///// 3. 자료구조
//*/
//
//import Foundation
//
//func solution(_ number: String, _ k: Int) -> String {
//    var stack: [Character] = []
//    var toRemove = k
//
//    for char in number {
//        while let last = stack.last, last < char, toRemove > 0 {
//            stack.removeLast()
//            toRemove -= 1
//        }
//        stack.append(char)
//    }
//    
//    // 제거할 숫자가 남았다면 끝에서부터 제거
//    while toRemove > 0 {
//        stack.removeLast()
//        toRemove -= 1
//    }
//
//    return String(stack)
//}
//
//print(solution("1924", 2)) // "94"
////print(solution("1231234", 3)) // "3234"
////print(solution("4177252841", 4)) // "775841"
