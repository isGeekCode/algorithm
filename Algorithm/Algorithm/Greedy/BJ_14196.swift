////
////  BJ_14196.swift
////  Algorithm
////
////  Created by 방현석 on 10/3/24.
////
//
//import Foundation
//
//// BJ14196
//// MARK: 거스름돈
//
//
///**
// 
// - 문제
// 향이는 편의점 카운터에서 일한다.
//
// 손님이 2원짜리와 5원짜리로만 거스름돈을 달라고 한다. 2원짜리 동전과 5원짜리 동전은 무한정 많이 가지고 있다. 동전의 개수가 최소가 되도록 거슬러 주어야 한다. 거스름돈이 n인 경우, 최소 동전의 개수가 몇 개인지 알려주는 프로그램을 작성하시오.
//
// 예를 들어, 거스름돈이 15원이면 5원짜리 3개를, 거스름돈이 14원이면 5원짜리 2개와 2원짜리 2개로 총 4개를, 거스름돈이 13원이면 5원짜리 1개와 2원짜리 4개로 총 5개를 주어야 동전의 개수가 최소가 된다.
//
//
// 
// - 입력
// 첫째 줄에 거스름돈 액수 n(1 ≤ n ≤ 100,000)이 주어진다.
//
//
// 
// - 예제 입력 :
// 13
// 
// - 출력
// 거스름돈 동전의 최소 개수를 출력한다. 만약 거슬러 줄 수 없으면 -1을 출력한다.
//
//
// 
// - 예제 출력 :
// 5
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// - input값을 5로 나눈갯수 m개
///// - input - 5m 을 2로 나눈 갯수 n개
///// - 5로 나누고 남은 갯수가 2로 나눌 수 있어야한다.
///// 2. 시간복잡도
///// 3. 자료구조
//
//
//// - 케이스 1 : 현재 금액이 5로 나누어 떨어진다
//// else
//// - 케이스 2
////   - 거스름돈에서 5를 나눈 잔액이 2로 나누어 떨어지는지 확인
////      - 완료
////   - else
////      - 5를 나눈 몫 - 1 , 변경한 몫으로 했을떄 잔액이 2로 나누어 떨어지는 지 확인
//
//
//var input = Int(readLine()!)!
//var originalInput = input
//var fiveCoinCount = 0
//var twoCoinCount = 0
//var answer = 0
//if input % 5 == 0 { // 케이스 1
//    fiveCoinCount = input / 5
//    print(fiveCoinCount)
//} else {
//    fiveCoinCount = input / 5
//    input -= (fiveCoinCount * 5)
//    while input % 2 != 0 {
//        fiveCoinCount -= 1
//        input += 5
//        
//        if input >= originalInput {
//            if originalInput % 2 != 0 {
//                answer = -1
//            }
//        }
//    }
//    
//    if answer != -1 {
//        twoCoinCount = input / 2
//        print(fiveCoinCount + twoCoinCount)
//        
//    } else{
//        print(answer)
//    }
//}
//
//
//
//// MARK: Insight
///*
// %= 도 가능하다는것
// */
//
//
//// MARK: Other Idea
///*
// var input = Int(readLine()!)!
// var fiveCoinCount = 0
// var twoCoinCount = 0
//
// // 5원으로 최대한 거슬러줌
// fiveCoinCount = input / 5
// input %= 5  // 5원으로 거슬러주고 남은 나머지 금액
//
// // 5원으로 거슬러주고 남은 금액이 2원으로 처리 가능한지 확인
// while fiveCoinCount >= 0 {
//     if input % 2 == 0 {  // 남은 금액이 2원으로 나누어떨어지면
//         twoCoinCount = input / 2
//         print(fiveCoinCount + twoCoinCount)  // 5원 + 2원의 총 개수 출력
//         break
//     }
//     // 5원을 하나 줄이고 남은 금액에 5원을 다시 더함
//     fiveCoinCount -= 1
//     input += 5
// }
//
// // 5원, 2원으로도 처리할 수 없는 경우 (거스름돈을 줄 수 없는 경우)
// if fiveCoinCount < 0 {
//     print(-1)
// }
//
// */
//
//
//// MARK: 다른 답 중 인상적인 답
