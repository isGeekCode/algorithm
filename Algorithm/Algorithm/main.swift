//
//  Prog_query2.swift
//  Algorithm
//
//  Created by 방현석 on 8/6/24.
//

import Foundation

// MARK: 수열과 구간 쿼리2


/**
 
 - 문제
 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [s, e, k] 꼴입니다.

 각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 k보다 크면서 가장 작은 arr[i]를 찾습니다.

 각 쿼리의 순서에 맞게 답을 저장한 배열을 반환하는 solution 함수를 완성해 주세요.
 단, 특정 쿼리의 답이 존재하지 않으면 -1을 저장합니다.


 제한사항
 1 ≤ arr의 길이 ≤ 1,000
 0 ≤ arr의 원소 ≤ 1,000,000
 1 ≤ queries의 길이 ≤ 1,000
 0 ≤ s ≤ e < arr의 길이
 0 ≤ k ≤ 1,000,000
 
 - 예제 입력 :
 arr
 [0, 1, 2, 4, 3]
 
 queries
 [[0, 4, 2],[0, 3, 2],[0, 2, 2]]
 
 - 예제 출력 :
 result
 [3, 4, -1]
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - 2차원 배열인 queries 을 순회
///  - 각 query에서 arr의 index를 가져오기
///  - arr 배열을  s...k 범위에서 순회
///   - 해당 값중 k보다 큰 수를 찾아서 임시배열 tempArr 에 저장
///    - 임시 배열에 저장된 값 중, 최소값을 resultArr 배열에 저장
///   - k보다 큰 수가 없다면 -1을 임시배열 tempArr 에 저장
/// - 저장된 result배열 리턴
/// 2. 시간복잡도
/// 3. 자료구조
/// - arr : 비교대상 배열
/// - queries : 비교범위가 담긴 2차원 배열
///  - s, e : arr 배열의 i 값의 범위
///  - k : 범위 중 크기를 비교할 값
/// - tempArr : k보다 큰 값을 저장할 배열
/// - resultArr : 결과로 리턴할 배열
///
///
func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var (tempArr, resultArr) = ([Int](), [Int]())
    var (s,e,k) = (0,0,0)
    for queue in queries {
        s = queue[0]
        e = queue[1]
        k = queue[2]
        for j in s...e {
            tempArr.append(arr[j])
        }
        var resultTempArr = [Int]()
        for element in tempArr {
            if arr[element] > k {
                resultTempArr.append(element)
            }
        }
        let value = resultTempArr.count == 0 ? -1 : resultTempArr.min()!

        resultArr.append(value)
        
        tempArr = []
    }
    
    return resultArr
}

let arr =  [0, 1, 2, 4, 3]
let queries =  [[0, 4, 2],[0, 3, 2],[0, 2, 2]]

print(solution(arr, queries))

// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea


/*

 func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
     var resultArr = [Int]()

     for query in queries {
         let s = query[0]
         let e = query[1]
         let k = query[2]
         
         let subArr = arr[s...e]
         let filteredResultList = subArr.filter { $0 > k }
         let minValue = filteredResultList.min() ?? -1
         resultArr.append(minValue)
     }
     return resultArr
 }

 - 다른 배열의 수를 가져와서 arr 배열의 배열을 가져오는 방법
 - 고차함수를 이용해서 필터링하는 방법
 - 최소값을 구하고 해당 값을 Nil coalescing 을 이용해 nil여부체크 후, 기본값을 넣는 것이 가능하다.
 */


// MARK: 다른 답 중 인상적인 답
