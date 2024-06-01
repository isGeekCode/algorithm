//
//  BJ_14681.swift
//  Algorithm
//
//  Created by 방현석 on 5/29/24.
//

import Foundation

// MARK: 사분면 고르기


/**
 
 - 문제
 흔한 수학 문제 중 하나는 주어진 점이 어느 사분면에 속하는지 알아내는 것이다. 사분면은 아래 그림처럼 1부터 4까지 번호를 갖는다. "Quadrant n"은 "제n사분면"이라는 뜻이다.

/**
 Quadrant2 * Quadrant1
 *********************
 Quadrant3 * Quadrant4
 
 A (12,5)
 B (-12,5)
 C (-12, -5)
 D (12, -5)
 
 */
  
 예를 들어, 좌표가 (12, 5)인 점 A는 x좌표와 y좌표가 모두 양수이므로 제1사분면에 속한다. 점 B는 x좌표가 음수이고 y좌표가 양수이므로 제2사분면에 속한다.
 점의 좌표를 입력받아 그 점이 어느 사분면에 속하는지 알아내는 프로그램을 작성하시오. 단, x좌표와 y좌표는 모두 양수나 음수라고 가정한다.

 - 입력
 첫 줄에는 정수 x가 주어진다. (−1000 ≤ x ≤ 1000; x ≠ 0) 다음 줄에는 정수 y가 주어진다. (−1000 ≤ y ≤ 1000; y ≠ 0)

 
 - 출력
 점 (x, y)의 사분면 번호(1, 2, 3, 4 중 하나)를 출력한다.


 
 - 예제1
 - 예제 입력 :
 12
 5
 - 예제 출력 :
 1
 
 - 예제2
 - 예제 입력 :
 9
 -13
 - 예제 출력 :
 4
 */

// MARK: 내 답
//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//
//if a > 0 {
//    if b > 0 {
//        print(1)
//    } else {
//        print(4)
//    }
//} else {
//    if b > 0 {
//        print(2)
//    } else {
//        print(3)
//    }
//}

//
//let a = Int(readLine()!)!
//let b = Int(readLine()!)!
//let c = a * b
//if c > 0 { // 둘 다 양수 혹은 둘다 음수
//    a > 0 ? print(1) : print(3)
//} else if c < 0 { // 둘 중 하나만 음수
//    a > 0 ? print(4) : print(2)
//}
//
//
//// MARK: 다른 답 중 인상적인 답
//
//let x = Int(readLine()!)!.signum(),
//    y = Int(readLine()!)!.signum()
//
//if x == 1 && y == 1 { print(1) }
//else if x == -1 && y == 1 { print(2) }
//else if x == -1 && y == -1 { print(3) }
//else { print(4) }
