// MARK: 수열과 구간 쿼리 4



/**
 
 - 문제
 정수 배열 arr와 2차원 정수 배열 queries이 주어집니다. queries의 원소는 각각 하나의 query를 나타내며, [s, e, k] 꼴입니다.

 각 query마다 순서대로 s ≤ i ≤ e인 모든 i에 대해 i가 k의 배수이면 arr[i]에 1을 더합니다.

 위 규칙에 따라 queries를 처리한 이후의 arr를 return 하는 solution 함수를 완성해 주세요.
 
 - 예제 입력 :
 arr = [0, 1, 2, 4, 3]
 queries = [[0, 4, 1],[0, 3, 2],[0, 3, 3]]
 
 - 예제 출력 :
 [3, 2, 4, 6, 4]
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - quries 에서 배열을 꺼낸다.
///     - index 를 s...e로 지정
///     - index가 k의 배수이면  arr[index] +1
/// 2. 시간복잡도
/// 3. 자료구조
///

import Foundation

/*
 정수 l과 r이 주어졌을 때, l 이상 r이하의 정수 중에서 숫자 "0"과 "5"로만 이루어진 모든 정수를 오름차순으로 저장한 배열을 return 하는 solution 함수를 완성해 주세요.

 만약 그러한 정수가 없다면, -1이 담긴 배열을 return 합니다.
 */
func solution(_ l:Int, _ r:Int) -> [Int] {
    var answers = [Int]()
    let arr = (l...r).filter {checkNum($0)}
    if arr.isEmpty { answers.append(-1)} else {
        answers = arr
    }
    return answers
}

func checkNum(_ num: Int) -> Bool {
    let digits = String(num)
    for digit in digits {
        if digit != "0" && digit != "5" {
            return false
        }
    }
    return true
}

func checkNumString(_ num: Int) -> Bool {
    let digits = String(num)
    return digits.allSatisfy { $0 == "0" || $0 == "5" }
}

let numbers = [2, 4, 6, 8]
let allEven = numbers.allSatisfy { $0 % 2 == 0 }

let l = 5
let r = 555 // 옳은 결과 : [5, 50, 55, 500, 505, 550, 555]
let l2 = 10
let r2 = 20 // 옳은 결과 : [-1]
print(solution(l, r))
// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
