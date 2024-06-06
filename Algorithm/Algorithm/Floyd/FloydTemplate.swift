////
////  FloydTemplate.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
//import Foundation
//
//
//// 입력 받기
//let n = Int(readLine()!)!
//let m = Int(readLine()!)!
//
//// 무한대를 나타내는 값
//let INF = Int.max
//
//// 거리 행렬 초기화
//// n+1로 하는 경우는 하나 더 추가해서 인덱스를 편하게 사용하기 위함
//var rs = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
//
//// 자기 자신으로 가는 비용은 0으로 초기화
//for i in 1...n {
//    rs[i][i] = 0
//}
//
//// 간선 정보 입력 받기
//for _ in 0..<m {
//    let edgeData = readLine()!.split(separator: " ").map { Int($0)! }
//    let a = edgeData[0]
//    let b = edgeData[1]
//    let c = edgeData[2]
//    rs[a][b] = min(rs[a][b], c) // a에서 b로 가는 최소 비용 갱신
//}
//
//// 플로이드-워셜 알고리즘 적용
//for k in 1...n {
//    for j in 1...n {
//        for i in 1...n {
//            
//            if rs[j][k] != INF && rs[k][i] != INF { // 오버플로우 방지
//                let sum = rs[j][k] + rs[k][i]
//                if rs[j][i] > sum {
//                    rs[j][i] = sum
//                }
//            }
//
//        }
//    }
//}
//
//// 결과 출력
//for j in 1...n {
//    for i in 1...n {
//
//        if rs[j][i] == INF {
//            print("0", terminator: " ")
////            print("INF", terminator: " ")
//
//        } else {
//            print(rs[j][i], terminator: " ")
//        }
//    }
//    print()
//}
