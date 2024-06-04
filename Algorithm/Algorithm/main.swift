//
//  BJ_11047.swift
//  Algorithm
//
//  Created by 방현석 on 6/5/24.
//

import Foundation
// MARK: 동전 0


/**
 
 - 문제
 준규가 가지고 있는 동전은 총 N종류이고, 각각의 동전을 매우 많이 가지고 있다.

 동전을 적절히 사용해서 그 가치의 합을 K로 만들려고 한다. 이때 필요한 동전 개수의 최솟값을 구하는 프로그램을 작성하시오.


 
 - 입력
 첫째 줄에 N과 K가 주어진다. (1 ≤ N ≤ 10, 1 ≤ K ≤ 100,000,000)

 둘째 줄부터 N개의 줄에 동전의 가치 Ai가 오름차순으로 주어진다. (1 ≤ Ai ≤ 1,000,000, A1 = 1, i ≥ 2인 경우에 Ai는 Ai-1의 배수)


 
 - 출력
 첫째 줄에 K원을 만드는데 필요한 동전 개수의 최솟값을 출력한다.


 
 - 예제1
 - 예제 입력 :
 10 4200
 1
 5
 10
 50
 100
 500
 1000
 5000
 10000
 50000
 
 - 예제 출력 :
 6
 
 - 예제2
 - 예제 입력 :
 10 4790
 1
 5
 10
 50
 100
 500
 1000
 5000
 10000
 50000
 - 예제 출력 :
 12
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - 입력1: 동전종류개수, 타겟금액
/// - 입력2: N개 종류의 동전 가치 A배열
/// - 동전가치 배열을 내림차순으로 변경
/// - 배열의 첫번째부터 타겟금액을 나누기
/// - 나눈 동전의 개수는 총 개수에 추가
/// - 나눈 금액은 총액에서 차감
/// - 다음 동전으로 나누기......
/// - 나머지가 없을 때까지처리한 동전 개수 체크
/// 2. 시간복잡도
/// 3. 자료구조
/// - 동전 종류의 개수 , 배열 [Int]
/// - 목표 금액 K ::::: Int
/// - 총 동전의 개수 :::: Int

let input2 = """
10 4200
1
5
10
50
100
500
1000
5000
10000
50000
"""

let input3 = """
10 4790
1
5
10
50
100
500
1000
5000
10000
50000
"""

let totalArr = input3.split(separator: "\n")
//let firstLine = totalArr[0].split(separator: " ").map{ Int($0)!}

let firstLine = readLine()!.split(separator: " ").map{ Int($0)!}
var (coinRow, target) = (firstLine[0], firstLine[1])
//var coins = totalArr[1...].map{Int($0)!}.sorted(by: >)
var coins = [Int]()
for _ in (0..<coinRow) {
    let coin = Int(readLine()!)!
    coins.append(coin)
}
coins.sort(by: >)

var count = 0
for coin in coins {
    count += target / coin
    target = target % coin
}
print(count)

/// - 입력1: 동전종류개수, 타겟금액
/// - 입력2: N개 종류의 동전 가치 A배열
/// - 동전가치 배열을 내림차순으로 변경
/// - 배열의 첫번째부터 타겟금액을 나누기
/// - 나눈 동전의 개수는 총 개수에 추가
/// - 나눈 금액은 총액에서 차감
/// - 다음 동전으로 나누기......
/// - 나머지가 없을 때까지처리한 동전 개수 체크



// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
