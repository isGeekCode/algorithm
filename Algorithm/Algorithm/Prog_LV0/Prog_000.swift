//
//  Prog_000.swift
//  Algorithm
//
//  Created by 방현석 on 5/31/24.
//

import Foundation
// MARK: n번째 원소까지


/**
 
 - 문제
 정수 리스트 num_list와 정수 n이 주어질 때, num_list의 첫 번째 원소부터 n 번째 원소까지의 모든 원소를 담은 리스트를 return하도록 solution 함수를 완성해주세요.
 
 - 입력
 숫자배열 num_list 과 n
 
 - 출력
 num_list의 n번째 까지의 원소를 갖고 있는 배열
 
 - 예제1
 - 예제 입력 :
 [2, 1, 6] , 1
 - 예제 출력 :
 [2], 3
 
 - 예제2
 - 예제 입력 :
 [5, 2, 1, 7, 5]
 - 예제 출력 :
 [5, 2, 1]
 
 
 */

// MARK: 내 답
//func solution(_ num_list:[Int], _ n: Int) -> [Int] {
//    return Array(num_list.prefix(n))
//}
//
//solution([2, 1, 6], 1)


// MARK: Insight
/*
 Array를 생성하기 위해서는 append만 있는것이 아니라 Array([1,3,2)와 같이 생성도 가능하다.



 */

// MARK: ETC
/**
 
 for문에서 n개 만큼 어레이에 추가하여 리턴하는 방법도 존재한다.
 */


// MARK: 다른 답 중 인상적인 답

/*
 map을 사용하는 방법
 
 */

//func solution(_ num_list:[Int], _ n:Int) -> [Int] {
//    return (0...n-1).map{num_list[$0]}
//}
