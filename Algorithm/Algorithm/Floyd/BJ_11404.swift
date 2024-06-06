////
////  BJ_11404.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
//import Foundation
//// MARK: 플로이드
//
//
///**
// 
// - 문제
// n(2 ≤ n ≤ 100)개의 도시가 있다. 그리고 한 도시에서 출발하여 다른 도시에 도착하는 m(1 ≤ m ≤ 100,000)개의 버스가 있다. 각 버스는 한 번 사용할 때 필요한 비용이 있다.
//
// 모든 도시의 쌍 (A, B)에 대해서 도시 A에서 B로 가는데 필요한 비용의 최솟값을 구하는 프로그램을 작성하시오.
//
//
// 
// - 입력
// 첫째 줄에 도시의 개수 n이 주어지고 둘째 줄에는 버스의 개수 m이 주어진다. 그리고 셋째 줄부터 m+2줄까지 다음과 같은 버스의 정보가 주어진다. 먼저 처음에는 그 버스의 출발 도시의 번호가 주어진다. 버스의 정보는 버스의 시작 도시 a, 도착 도시 b, 한 번 타는데 필요한 비용 c로 이루어져 있다. 시작 도시와 도착 도시가 같은 경우는 없다. 비용은 100,000보다 작거나 같은 자연수이다.
//
// 시작 도시와 도착 도시를 연결하는 노선은 하나가 아닐 수 있다.
//
//
// 
// - 예제 입력 :
// 5
// 14
// 1 2 2
// 1 3 3
// 1 4 1
// 1 5 10
// 2 4 2
// 3 4 1
// 3 5 1
// 4 5 3
// 3 5 10
// 3 1 8
// 1 4 2
// 5 1 7
// 3 4 2
// 5 2 4
// 
// - 출력
// n개의 줄을 출력해야 한다. i번째 줄에 출력하는 j번째 숫자는 도시 i에서 j로 가는데 필요한 최소 비용이다. 만약, i에서 j로 갈 수 없는 경우에는 그 자리에 0을 출력한다.
//
//
// 
// - 예제 출력 :
// 0 2 3 1 4
// 12 0 15 2 5
// 8 5 0 1 1
// 10 7 13 0 3
// 7 4 10 6 0
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// - 모든 노드쌍(A,B)에 대하여 도시 A에서 도시 B로 가는 최솟값구하기 :::: 플로이드
/////     - 한 점 -> 모든 점 ::: 다익스트라
/////     - 모든 점 -> 모든 점 ::: 플로이드
///// - 플로이드
/////     - 거리 초기값은 무한대,  자기 자신으로 가는값 0
/////     - 노드 거쳐가는 경우에 비용이 작아지면 갱신
///// - i번째 줄에 j번째 숫자는 도시 i에서 j로 가는 최소 비용
/////
///// 2. 시간복잡도
///// - 다익스트라인경우 E(lgV) * V =
/////     - 1e^5 * 10 * 1e^ = 1e8 ::: 시간 초과 가능성있음
///// - 플로이드 -> O(V^3) :::: 100^3 = 1,000,000
/////     - (1e2)^3 = 1e^6 ::: 가능
/////
///// 3. 자료구조
///// - 도시 :: 노드 개수 ->  n: Int
///// - 버스 :: 간선 개수 ->  m: Int
///// - 엣지 정보 : 3째줄 부터 m +2 까지
/////     - a == b 같은 경우는 없음
/////     - 시작 도시 a : Int
/////     - 도착 도시 b : Int
/////     - 비용 c : Int
/////         - c <= 100000
///// - 거리배열: result[Int][Int]
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
//            if rs[j][k] != INF && rs[k][i] != INF {
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
//        } else {
//            print(rs[j][i], terminator: " ")
//        }
//    }
//    print()
//}
//
//
//// MARK: Insight
///*
// <#text#>
// */
//
//
//// MARK: Other Idea
///*
// <#text#>
// */
//
//
//// MARK: 다른 답 중 인상적인 답
