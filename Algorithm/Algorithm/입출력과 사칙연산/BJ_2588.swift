//
//  BJ_2588.swift
//  Algorithm
//
//  Created by 방현석 on 4/30/24.
//

import Foundation

// MARK: 곱셈

/**

- 문제

세 자리 수 (1)  × 세 자리 수 (2)는 다음과 같은 과정을 통하여 이루어진다.

 - (3) :  A * B의 세번째 수
 - (4):   A * B의 두번째 수
 - (5):   A * B의 첫번째 수
 - (6):   A * B
 
 
(1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.



- 입력

첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.


- 예제 입력 :
472
385

- 출력

첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.



- 예제 출력 :
2360
3776
1416
181720
*/


// MARK: 두줄로 입력받기
//var inputArr: [String] = []
//for _ in 0..<2 {
//    inputArr.append(readLine()!)
//}
//

//let multiArr = inputArr[1].compactMap{ Int(String($0)) }
//let origin = Int(inputArr[0])!

// MARK: 1. for 문으로 처리하기

//for i in (0 ..< multiArr.count).reversed() {
//    print(origin * multiArr[i])
//}
//print(origin * Int(inputArr[1])!)


// MARK: 1. while 문으로 처리하기
//var count = multiArr.count - 1 // 배열의 마지막 인덱스부터 시작
//while count >= 0 {
//    print(origin * multiArr[count])
//    count -= 1
//}
//print(origin * Int(inputArr[1])!)


// MARK: 인상적이었던 답

//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//print(a*(b%10))
//print(a*((b%100)/10))
//print(a*(b/100))
//print(a*b)

/*
 
 각 자릿수를 구하는 식을 생성하는 방법이다
 코드가 짧긴하지만 가독성이 좋을까는 의문이다.
 
 입력이 472 385일 때,
 b%10 의 값은 나머지 5가 된다
 (b%100)/10 에서 b%100으로 먼저 85가 되고, 이걸 10으로 나눌때, 8이 나온다
 b/100 385의 나누기 값은 3 
 */
