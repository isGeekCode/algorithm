////
////  Prim.swift
////  Algorithm
////
////  Created by 방현석 on 6/5/24.
////
//
//import Foundation
//
//var heap = [(0, 1)] // 시작지점 (비용, 노드번호)
//var chk = [Bool](repeating: false, count: 6) // 노드 개수 + 1 (노드 번호가 1부터 시작한다고 가정)
//var rs = 0
//
//// 각 노드에 연결된 간선과 비용
//var edge = [
//    [],
//    [(1, 5), (2, 2), (3, 3)],  // 1번 노드
//    [(2, 1), (4, 3), (5, 4)],  // 2번 노드
//    [(3, 1), (4, 2), (6, 4)],  // 3번 노드
//    [(5, 2), (6, 3)],          // 4번 노드
//    [(1, 1)]                   // 5번 노드
//]
//
//while !heap.isEmpty {
//    // 최소 힙 구현을 위해 정렬하여 첫 요소를 사용
//    heap.sort { $0.0 < $1.0 }
//    let (w, nextNode) = heap.removeFirst()
//
//    if !chk[nextNode] {
//        chk[nextNode] = true
//        rs += w
//        
//        for nextEdge in edge[nextNode] {
//            let (cost, connectedNode) = nextEdge
//            if !chk[connectedNode] {
//                heap.append((cost, connectedNode))
//            }
//        }
//    }
//}
//
//print("Minimum Spanning Tree Cost: \(rs)")
//
//
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
