////
////  BJ_1753.swift
////  Algorithm
////
////  Created by 방현석 on 6/6/24.
////
//
//import Foundation
//
//// MARK: 최단경로
//
//
///**
// 
// - 문제
// 방향그래프가 주어지면 주어진 시작점에서 다른 모든 정점으로의 최단 경로를 구하는 프로그램을 작성하시오. 단, 모든 간선의 가중치는 10 이하의 자연수이다.
//
//
// 
// - 입력
// 첫째 줄에 정점의 개수 V와 간선의 개수 E가 주어진다. (1 ≤ V ≤ 20,000, 1 ≤ E ≤ 300,000) 모든 정점에는 1부터 V까지 번호가 매겨져 있다고 가정한다. 둘째 줄에는 시작 정점의 번호 K(1 ≤ K ≤ V)가 주어진다. 셋째 줄부터 E개의 줄에 걸쳐 각 간선을 나타내는 세 개의 정수 (u, v, w)가 순서대로 주어진다. 이는 u에서 v로 가는 가중치 w인 간선이 존재한다는 뜻이다. u와 v는 서로 다르며 w는 10 이하의 자연수이다. 서로 다른 두 정점 사이에 여러 개의 간선이 존재할 수도 있음에 유의한다.
//
//
// 
// - 예제 입력 :
// 5 6
// 1
// 5 1 1
// 1 2 2
// 1 3 3
// 2 3 4
// 2 4 5
// 3 4 6
// 
// - 출력
// 첫째 줄부터 V개의 줄에 걸쳐, i번째 줄에 i번 정점으로의 최단 경로의 경로값을 출력한다. 시작점 자신은 0으로 출력하고, 경로가 존재하지 않는 경우에는 INF를 출력하면 된다.
//
//
// 
// - 예제 출력 :
// 0
// 2
// 3
// 7
// INF
// 
// */
//
//// MARK: 내 답
///// 1. 아이디어
///// 2. 시간복잡도
///// 3. 자료구조
//
//
//let input = """
//5 6
//1
//5 1 1
//1 2 2
//1 3 3
//2 3 4
//2 4 5
//3 4 6
//"""
//
////let lines = input.split(separator: "\n").map { String($0) }
////let firstLine = lines[0].split(separator: " ").map { Int($0)! }
//let firstLine = readLine()!.split(separator: " ").map{ Int($0)!}
//
//let (v, e) = (firstLine[0], firstLine[1])
////let startV = Int(lines[1])!
//let startV = Int(readLine()!)!
//
//// 인접 리스트 초기화
//var edges = Array(repeating: [Edge](), count: v + 1)
//var distance = Array(repeating: Int.max, count: v + 1)
//distance[1] = 0 // 시작 노드의 거리는 0
//
//for i in 1...e{
////    let edgeData = lines[i].split(separator: " ").map { Int($0)! }
//    let edgeData = readLine()!.split(separator: " ").map { Int($0)! }
//    let (a, b, c) = (edgeData[0], edgeData[1], edgeData[2])
//    // 양방향(무방향) 그래프인 경우 a에서 b로, b에서 a로 두번 추가
////    edges[a].append((c, b))
////    edges[b].append((c, a))
//    
//    edges[a].append(Edge(cost: c, node: b))
////    edges[b].append(Edge(cost: c, node: a))
//
//}
//
//var heap = Heap<Edge>()
//heap.insert(Edge(cost: 0, node: startV))
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
//    }
//}
//
//for i in 1...v {
//    if distance[i] == Int.max {
//        print("INF")
//    } else {
//        print(distance[i])
//    }
//}
//
//
//
//
