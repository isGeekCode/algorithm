//
//  Muz.swift
//  Algorithm
//
//  Created by 방현석 on 7/24/24.
//



import Foundation

//func MathChallenge(_ num: Int) -> Int {
//    var varOcg = num // __define-ocg__
//    var count = 0
//
//    while varOcg != 6174 {
//        // 숫자를 문자열로 변환 후 배열로 저장
//        var digits = String(varOcg).padding(toLength: 4, withPad: "0", startingAt: 0).map { Int(String($0))! }
//
//        // 내림차순으로 정렬하여 큰 수 만들기
//        let desc = Int(digits.sorted(by: >).map { String($0) }.joined())!
//
//        // 오름차순으로 정렬하여 작은 수 만들기
//        let asc = Int(digits.sorted().map { String($0) }.joined())!
//
//        // 큰 수에서 작은 수를 뺀 값으로 갱신
//        varOcg = desc - asc
//
//        // 반복 횟수 증가
//        count += 1
//    }
//
//    return count
//}

//func MathChallenge(_ num: Int) -> Int {
//    var varOcg = num // __define-ocg__
//    var count = 0
//
//    while varOcg != 6174 {
//        // 숫자를 문자열로 변환 후 배열로 저장
////        let digits = String(format: "%04d", varOcg).map { Int(String($0))! }
//
////        var digits = String(format: "%04d", varOcg).map { Int(String($0))! }
////        print(digits)
//
//        let digitStrings = String(format: "%04d", varOcg).map { String($0) }
//        var digits: [Int] = []
//
//        for digitString in digitStrings {
//            if let digit = Int(digitString) {
//                digits.append(digit)
//            } else {
//                // 예외 처리: 변환 실패 시 기본값으로 0을 추가
//                digits.append(0)
//            }
//        }
//
//
//        // 내림차순으로 정렬하여 큰 수 만들기
//        let desc = Int(digits.sorted(by: >).map { String($0) }.joined())!
//
//        // 오름차순으로 정렬하여 작은 수 만들기
//        let asc = Int(digits.sorted().map { String($0) }.joined())!
//
//        // 큰 수에서 작은 수를 뺀 값으로 갱신
//        varOcg = desc - asc
//
//        // 반복 횟수 증가
//        count += 1
//    }
//
//    return count
//}

//func MathChallenge(_ num: Int) -> Int {
//
//    // code goes here
//    // Note: feel free to modify the return type of this function
//    // return num
//
//    var varOcg = num
//    var count = 0
//
//    while varOcg != 6174 {
//        // 숫자를 문자열로 변환 후 배열로 저장
//        // var digits = String(format: "%04d", varOcg).map { Int(String($0))! }
//        // print(digits)
//
//        let digitStrings = String(format: "%04d", varOcg).map { String($0) }
//        var digits: [Int] = []
//
//        for digitString in digitStrings {
//            if let digit = Int(digitString) {
//                digits.append(digit)
//            } else {
//                // 예외 처리: 변환 실패 시 기본값으로 0을 추가
//                digits.append(0)
//            }
//        }
//
//
////        // 내림차순으로 정렬하여 큰 수 만들기
////        let desc = Int(digits.sorted(by: >).map { String($0) }.joined())!
////
////        // 오름차순으로 정렬하여 작은 수 만들기
////        let asc = Int(digits.sorted().map { String($0) }.joined())!
////
////        // 큰 수에서 작은 수를 뺀 값으로 갱신
////        varOcg = desc - asc
////
//
//        if let desc = Int(digits.sorted(by: >).map({ String($0) }).joined()),
//           let asc = Int(digits.sorted().map({ String($0) }).joined()) {
//            // 큰 수에서 작은 수를 뺀 값으로 갱신
//            varOcg = desc - asc
//            // 반복 횟수 증가
//            count += 1
//
//        } else {
//            print("error")
//        }
//
//
//
//    }
//    return count
//}
//print(MathChallenge(Int(readLine()!)!))

// 입력을 받기 위한 부분
//print(MathChallenge(Int(readLine()!)!))



// 제출
//func MathChallenge(_ num: Int) -> Int {
//
//  // code goes here
//  // Note: feel free to modify the return type of this function
//  // return num
//  print(num)
//  var varOcg = num
//  var count = 0
//
//  while varOcg != 6174 {
//        // 숫자를 문자열로 변환 후 배열로 저장
//        // var digits = String(format: "%04d", varOcg).map { Int(String($0))! }
//        // print(digits)
//        
//        let digitStrings = String(format: "%04d", varOcg).map { String($0) }
//        var digits: [Int] = []
//        
//        for digitString in digitStrings {
//            if let digit = Int(digitString) {
//                digits.append(digit)
//            } else {
//                // 예외 처리: 변환 실패 시 기본값으로 0을 추가
//                digits.append(0)
//            }
//        }
//
//              
//        if let desc = Int(digits.sorted(by: >).map({ String($0) }).joined()),
//           let asc = Int(digits.sorted().map({ String($0) }).joined()) {
//            // 큰 수에서 작은 수를 뺀 값으로 갱신
//            varOcg = desc - asc
//            // 반복 횟수 증가
//            count += 1
//
//        } else {
//            print("error")
//        }
//        
//
//    }
//
//  return count
//}
//
//// print(MathChallenge(Int(readLine()!)!))
//if let input = readLine(), let num = Int(input) {
//    print(MathChallenge(num))
//}
