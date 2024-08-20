//
//  Collatz.swift
//  Algorithm
//
//  Created by 방현석 on 8/20/24.
//

import Foundation

/*
 모든 자연수 x에 대해서 현재 값이 x이면 x가 짝수일 때는 2로 나누고, x가 홀수일 때는 3 * x + 1로 바꾸는 계산을 계속해서 반복하면 언젠가는 반드시 x가 1이 되는지 묻는 문제를 콜라츠 문제라고 부릅니다.

 그리고 위 과정에서 거쳐간 모든 수를 기록한 수열을 콜라츠 수열이라고 부릅니다.

 계산 결과 1,000 보다 작거나 같은 수에 대해서는 전부 언젠가 1에 도달한다는 것이 알려져 있습니다.

 임의의 1,000 보다 작거나 같은 양의 정수 n이 주어질 때 초기값이 n인 콜라츠 수열을 return 하는 solution 함수를 완성해 주세요.
 - n : 10
 - result : [10, 5, 16, 8, 4, 2, 1]

 */


/// 1. 아이디어
/// - 현재값 x 체크
///     - 짝수 : even -> x / 2
///     - 홀수 : odd -> 3 * x + 1
/// - 현재값 x 체크
/// 2. 시간복잡도
/// 3. 자료구조



//
//func solution(_ n:Int) -> [Int] {
//    var current = n
//    var answers = [current]
//    
//    while current != 1 {
//        if current % 2 != 0 { // odd
//            print("odd")
//            current = (current * 3) + 1
//        } else if current % 2 == 0 { // even
//            print("!odd")
//            current = current / 2
//        }
//        answers.append(current)
//    }
//    return answers
//}
//
//print(solution(10))
