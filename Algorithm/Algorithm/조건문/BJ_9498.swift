////
////  BJ_9498.swift
////  Algorithm
////
////  Created by 방현석 on 5/28/24.
////
//
//import Foundation
//
//// MARK: 시험 성적
//
//
///**
// 
// - 문제
// 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
//
//
// 
// - 입력
// 첫째 줄에 시험 점수가 주어진다. 시험 점수는 0보다 크거나 같고, 100보다 작거나 같은 정수이다.
//
//
// 
// - 예제 입력 :
// 100
// 
// - 출력
// 시험 성적을 출력한다.
//
//
// 
// - 예제 출력 :
// A
// 
// */
//
//// MARK: 내 답
//let input = Int(readLine()!)!
//
//struct CheckModel {
//    let num: Int
//    
//    init(num: Int) {
//        self.num = num
//        check(num: self.num)
//    }
//    
//    func check(num: Int) {
//        if num >= 90 && num <= 100 {
//            print("A")
//        } else if num >= 80 && num <= 89 {
//            print("B")
//        } else if num >= 70 && num <= 79 {
//            print("C")
//        } else {
//            print("D")
//        }
//    }
//}
//let model = CheckModel(num: input)
//
//// MARK: 다른 답 중 인상적인 답
