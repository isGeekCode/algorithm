//
//  BJ_1026.swift
//  Algorithm
//
//  Created by 방현석 on 10/4/24.
//

import Foundation

// MARK: 보물


/**
 
 - 문제
 옛날 옛적에 수학이 항상 큰 골칫거리였던 나라가 있었다. 이 나라의 국왕 김지민은 다음과 같은 문제를 내고 큰 상금을 걸었다.

 길이가 N인 정수 배열 A와 B가 있다. 다음과 같이 함수 S를 정의하자.

 S = A[0] × B[0] + ... + A[N-1] × B[N-1]

 S의 값을 가장 작게 만들기 위해 A의 수를 재배열하자. 단, B에 있는 수는 재배열하면 안 된다.

 S의 최솟값을 출력하는 프로그램을 작성하시오.


 
 - 입력
 첫째 줄에 N이 주어진다. 둘째 줄에는 A에 있는 N개의 수가 순서대로 주어지고, 셋째 줄에는 B에 있는 수가 순서대로 주어진다. N은 50보다 작거나 같은 자연수이고, A와 B의 각 원소는 100보다 작거나 같은 음이 아닌 정수이다.
 
 - 출력
 첫째 줄에 S의 최솟값을 출력한다.


 
 - 예제1
 - 예제 입력 :
 5
 1 1 1 6 0
 2 7 8 3 1
 - 예제 출력 :
 18
 
 - 예제2
 - 예제 입력 :
 3
 1 1 3
 10 30 20
 - 예제 출력 :
 80
 
 - 예제3
 - 예제 입력 :
 9
 5 15 100 31 39 0 0 3 26
 11 12 13 2 3 4 5 9 1
 - 예제 출력 :
 528
 
 */

// MARK: 내 답
/// 1. 아이디어
/// - B배열은 바꾸지 말라고 했는데 상과없지않나??
/// - B배열을 살펴보고 가장 작은 값의 위치에 A배열의 가장 큰수를 매칭
/// 2. 시간복잡도
/// 3. 자료구조


let index = Int(String(readLine()!))!
var aArr = readLine()!.split(separator: " ").map{ Int(String($0))!}
var bArr = readLine()!.split(separator: " ").map{ Int(String($0))!}
aArr.sort(by: <)
bArr.sort(by: >)

var sum = 0
for i in 0 ..< index {
    sum += aArr[i] * bArr[i]
}
print(sum)

// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
