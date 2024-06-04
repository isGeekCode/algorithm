//
//  BJ_1920.swift
//  Algorithm
//
//  Created by 방현석 on 6/5/24.
//

import Foundation
// MARK: 수찾기


/**
 
 - 문제
 N개의 정수 A[1], A[2], …, A[N]이 주어져 있을 때, 이 안에 X라는 정수가 존재하는지 알아내는 프로그램을 작성하시오.


 
 - 입력
 첫째 줄에 자연수 N(1 ≤ N ≤ 100,000)이 주어진다. 다음 줄에는 N개의 정수 A[1], A[2], …, A[N]이 주어진다. 다음 줄에는 M(1 ≤ M ≤ 100,000)이 주어진다. 다음 줄에는 M개의 수들이 주어지는데, 이 수들이 A안에 존재하는지 알아내면 된다. 모든 정수의 범위는 -231 보다 크거나 같고 231보다 작다.


 
 - 예제 입력 :
 5
 4 1 5 2 3
 5
 1 3 7 9 5
 
 - 출력
 M개의 줄에 답을 출력한다. 존재하면 1을, 존재하지 않으면 0을 출력한다.


 
 - 예제 출력 :
 1
 1
 0
 0
 1
 
 */

// MARK: 내 답
/// 1. 아이디어
///
/// - 첫 아이디어
///     1.  두번째 배열에 있는 수를 각각 A배열의 타겟으로 포문을 돌린다.
/// - 첫 시간 복잡도
///     - O(MN) = 10,000,000,000 -> 불가
///         - M:::: 100,000
///         - N:::: 100,000
/// - 투포인터??
///     - 투포인터는 연속하는 성질을 갖고있음.. 이문제는 값을 찾는 문제이기 떄문에 해당 X
/// - 이진탐색
///     1. 두번째 배열에 있는 수를 첫번째 부터 N까지의 A배열에서 중간 부분의 숫자와 비교한다.
///     2. 클 경우, mid+1 부터 N-1 까지 재귀
///     3. 작을 경우 0부터 mid 까지 재귀
/// 2. 시간복잡도
///     - N개의 수 정렬 :::O(N * lgN)
///     - M개의 수를 이진 탐색 ::: O(M * lgN)
///     - O((N+M) lgN) =  2e5 * 20 = 4e6 -> 가능
///         -
/// 3. 자료구조
///     - A배열 ::: [Int]
///     - A배열의 갯수 ::: Int
///     - B배열 ::: [Int]
///     - B배열의 갯수 :::: Int
///     - 타겟이 될 B배열의 각요소:::: Int
///     - 각각의 일치 여부를 담은 결과값 1, 0    :::: Int

//let n = Int(readLine()!)!
//var nums = readLine()!.split(separator: " ").map{ Int($0)!}
//let m = Int(readLine()!)!
//let targetList = readLine()!.split(separator: " ").map{ Int($0)!}
//
//nums.sort()
//
//for i in targetList {
//    binarySearch(0, n-1, i)
//}
//
//
//func binarySearch(_ start: Int, _ end: Int, _ target: Int) {
//    if start == end {
//        nums[start] == target ? print(1) : print(0)
//        return
//    }
//    
//    let mid = (start + end) / 2
//    if nums[mid] < target {
//        binarySearch(mid+1, end, target)
//    } else {
//        binarySearch(start, mid, target)
//    }
//}
// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
