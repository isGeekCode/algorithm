////
////  BJ_1197.swift
////  Algorithm
////
////  Created by 방현석 on 6/5/24.
////
//
//import Foundation
//
//let input = """
//3 3
//1 2 1
//2 3 2
//1 3 3
//"""
//
//let lines = input.split(separator: "\n").map { String($0) }
//let firstLine = lines[0].split(separator: " ").map { Int($0)! }
////let firstLine = readLine()!.split(separator: " ").map{ Int($0)!}
//
//let (v, e) = (firstLine[0], firstLine[1])
//
//// 인접 리스트 초기화
////var edges = Array(repeating: [(Int, Int)](), count: v + 1)
//var edges = Array(repeating: [Edge](), count: v + 1)
//var distance = Array(repeating: Int.max, count: v + 1)
//distance[1] = 0 // 시작 노드의 거리는 0
//
//for i in 1...e {
//    let edgeData = lines[i].split(separator: " ").map { Int($0)! }
////    let edgeData = readLine()!.split(separator: " ").map { Int($0)! }
//    let (a, b, c) = (edgeData[0], edgeData[1], edgeData[2])
//    // 양방향(무방향) 그래프인 경우 a에서 b로, b에서 a로 두번 추가
////    edges[a].append((c, b))
////    edges[b].append((c, a))
//    
//    edges[a].append(Edge(cost: c, node: b))
//    edges[b].append(Edge(cost: c, node: a))
//
//}
//// edges
//// [[], [(1, 2), (3, 3)], [(1, 1), (2, 3)], [(2, 2), (3, 1)]]
//
//var heap = Heap<Edge>()
//heap.insert(Edge(cost: 0, node: 1))
//
//while !heap.isEmpty {
//    //    let (w, eachNode) = heap.removeFirst() // heap을 pop
//    guard let edge = heap.extractMin() else { break }
//    let (w, eachNode) = (edge.cost, edge.node)
//    // w: 현재 비용
//    // eachNode : 현재 노드
//    /// 그 노드에 대한 거리가 최신의 최소 거리(distance[eachNode])와 일치하지 않으면
//    if w != distance[eachNode] {
//        continue
//    }
//    
//    for nextEdge in edges[eachNode] {
//        // 현재 관리중인 노드의 거리가 더 크면 갱신
//        if distance[nextEdge.node] > distance[eachNode] + nextEdge.cost {
//            distance[nextEdge.node] = distance[eachNode] + nextEdge.cost
//            let newEdge = Edge(cost: distance[nextEdge.node], node: nextEdge.node)
//            heap.insert(newEdge)
//        }
//
//    }
//
//}
//
//print(distance)
//
//
//
