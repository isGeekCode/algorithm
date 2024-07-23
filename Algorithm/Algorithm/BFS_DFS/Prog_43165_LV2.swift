////
////  BJ_11404.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
//import Foundation
//
//// MARK: 타겟 넘버
//
//
///**
// 
// - 문제
// n개의 음이 아닌 정수들이 있다. 이 정수들의 순서를 바꾸지 않고 적절히 더하거나 빼서 타겟 넘버를 만들려고 한다. 예를 들어 [1,1,1,1,1]로  숫자 3을 만들려면 다음 다섯 가지 방법을 쓸 수 있다.
// 
// -1+1+1+1+1 = 3
// +1-1+1+1+1 = 3
// +1+1-1+1+1 = 3
// +1+1+1-1+1 = 3
// +1+1+1+1-1 = 3
// 
// 사용할 수 있는 숫자가 담긴 배열 numbers, 타겟넘버 target이 매개 변수로 주어질 때, 숫자를 적절히 더하고 빼서 타겟 넘버를 만드는 방법의 수를 return 하도록 solution함수 완성
// 
// 제한
// - 주어지는 숫자의 개수는 2개 이상 20개 이하
// 각숫자는 1이상 50이하인 자연수
// 타겟 넘버는 1이상 1000이하인 자연수
// 
// - 예제1
// - numbers :
// [1,1,1,1,1]
// - target
// 3
// - return :
// 5
// 
// - 예제2
// 
// +4+1-2+1 = 4
// +4-1+2-1 = 4
// 
// 총 두개가 있으므로 2리턴
// 
// - 예제 입력 :
// [4,1,2,1]]
// - target
// 4
// - return :
// 2
// 
// - 예제3
// - 예제 입력 :
// <#abc...#>
// - 예제 출력 :
// <#abc...#>
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// 2. 시간복잡도
///// 3. 자료구조
//
//func solution(_ numbers: [Int], _ target: Int) -> Int {
//    var count = 0
//
//    func dfs(index: Int, currentSum: Int) {
//        if index == numbers.count {
//            if currentSum == target {
//                count += 1
//            }
//            return
//        }
//        
//        // 현재 숫자를 더하는 경우
//        dfs(index: index + 1, currentSum: currentSum + numbers[index])
//        // 현재 숫자를 빼는 경우
//        dfs(index: index + 1, currentSum: currentSum - numbers[index])
//    }
//
//    dfs(index: 0, currentSum: 0)
//    return count
//}
//let numbers = [1, 1, 1, 1, 1]
//let target = 3
//print(solution(numbers, target)) // 출력: 5
//
//let numbers2 = [4, 1, 2, 1]
//let target2 = 4
//print(solution(numbers2, target2)) // 출력: 2
//
//
