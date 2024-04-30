//
//  BJ_1330.swift
//  Algorithm
//
//  Created by 방현석 on 4/30/24.
//

import Foundation
// MARK: 두 수 비교하기


/**
 
 - 문제
 
 두 정수 A와 B가 주어졌을 때, A와 B를 비교하는 프로그램을 작성하시오.


 
 - 입력
 첫째 줄에 A와 B가 주어진다. A와 B는 공백 한 칸으로 구분되어져 있다.


 - 출력
 첫째 줄에 다음 세 가지 중 하나를 출력한다.

    - A가 B보다 큰 경우에는 '>'를 출력한다.
    - A가 B보다 작은 경우에는 '<'를 출력한다.
    - A와 B가 같은 경우에는 '=='를 출력한다.


- 예제1
- 예제 입력 :
 1 2
- 예제 출력 :
 <
 
- 예제2
- 예제 입력 :
 10 2
- 예제 출력 :
 >
 
- 예제3
- 예제 입력 :
 5 5
- 예제 출력 :
 ==
 
 */


// MARK: 내 답
// 두 값의 차를 양수 음수로 구분

//let intArr = readLine()!.split(separator: " ").map{Int($0)!}
//let minus = intArr[0] - intArr[1]
//if minus > 0 {
//    print(">")
//} else if minus < 0 {
//    print("<")
//} else {
//    print("==")
//}


// MARK: 다른 인상적인 답
// 아예 값 자체를 비교
/*

 
 let input = readLine()!.split(separator: " ").map { Int($0)! }

 if input[0] > input[1] {
     print(">")
 } else if input[0] < input[1] {
     print("<")
 } else {
     print("==")
 }
 */
