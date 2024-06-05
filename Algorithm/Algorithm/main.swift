//
//  BJ_1197.swift
//  Algorithm
//
//  Created by 방현석 on 6/5/24.
//

import Foundation

// MARK: 최소 스패닝 트리


/**
 
 - 문제
 그래프가 주어졌을 때, 그 그래프의 최소 스패닝 트리를 구하는 프로그램을 작성하시오.

 최소 스패닝 트리는, 주어진 그래프의 모든 정점들을 연결하는 부분 그래프 중에서 그 가중치의 합이 최소인 트리를 말한다.

 
 - 입력
 첫째 줄에 정점의 개수 V(1 ≤ V ≤ 10,000)와 간선의 개수 E(1 ≤ E ≤ 100,000)가 주어진다. 다음 E개의 줄에는 각 간선에 대한 정보를 나타내는 세 정수 A, B, C가 주어진다. 이는 A번 정점과 B번 정점이 가중치 C인 간선으로 연결되어 있다는 의미이다. C는 음수일 수도 있으며, 절댓값이 1,000,000을 넘지 않는다.

 그래프의 정점은 1번부터 V번까지 번호가 매겨져 있고, 임의의 두 정점 사이에 경로가 있다. 최소 스패닝 트리의 가중치가 -2,147,483,648보다 크거나 같고, 2,147,483,647보다 작거나 같은 데이터만 입력으로 주어진다.


 
 - 예제 입력 :
 3 3
 1 2 1
 2 3 2
 1 3 3

 
 - 출력
 첫째 줄에 최소 스패닝 트리의 가중치를 출력한다.

 
 - 예제 출력 :
 3

 
 */

// MARK: 내 답
/// 1. 아이디어
/// - MST 기본문제, 외우기
///     - 간선을 인접리스트에 집어넣기
///     - 힙에 시작점 넣기
///     - 힙이 빌때까지 아래 작업
///         - 힙의 최소값 꺼내서, 해당 노드 방문 안했다면
///             - 방문 표시, 해당 비용추가, 연결된 간선들을 힙에 새롭게 추가
///
/// 2. 시간복잡도
///  - MST: O(ElgE)
///
///
/// 3. 자료구조
///  - 간선 저장되는 인접리스트 : (무게, 노드 번호)
///  - 힙 : (무게, 노드번호)
///  - 방문여부 : [Bool]
///  - MST 결과값 : Int

let input = """
3 3
1 2 1
2 3 2
1 3 3
"""

//let lines = input.split(separator: "\n").map { String($0) }
//let firstLine = lines[0].split(separator: " ").map { Int($0)! }
let firstLine = readLine()!.split(separator: " ").map{ Int($0)!}

let (v, e) = (firstLine[0], firstLine[1])

// 인접 리스트 초기화
//var edges = Array(repeating: [(Int, Int)](), count: v + 1)
var edges = Array(repeating: [Edge](), count: v + 1)

for i in 1...e {
//    let edgeData = lines[i].split(separator: " ").map { Int($0)! }
    let edgeData = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b, c) = (edgeData[0], edgeData[1], edgeData[2])
    // 양방향(무방향) 그래프인 경우 a에서 b로, b에서 a로 두번 추가
//    edges[a].append((c, b))
//    edges[b].append((c, a))
    
    edges[a].append(Edge(cost: c, node: b))
    edges[b].append(Edge(cost: c, node: a))

}
// edges
// [[], [(1, 2), (3, 3)], [(1, 1), (2, 3)], [(2, 2), (3, 1)]]

//var heap = [(0,1)] // 노드 시작지점
var heap = Heap<Edge>()
heap.insert(Edge(cost: 0, node: 1))

// 방문 리스트 초기화
var chk = Array(repeating: false, count: v + 1)

var rs = 0 // 총 무게

while !heap.isEmpty {
//    heap.sort(by: <) // heap의 동작처럼 최소값 순으로 정렬 ->> 시간 초과...!!!
//    let (w, eachNode) = heap.removeFirst() // heap을 pop
    guard let edge = heap.extractMin() else { break }
    let (w, eachNode) = (edge.cost, edge.node)

//    if !chk[eachNode] {
//        chk[eachNode] = true
//        rs += w
//        for nextEdge in edges[eachNode] {
//            if !(chk[nextEdge.1]) {
//                heap.insert(nextEdge)
//
////                heap.append(nextEdge)
//            }
//        }
//    }
    
    if !chk[eachNode] {
        chk[eachNode] = true
        rs += w
        for nextEdge in edges[eachNode] {
            if !chk[nextEdge.node] {
                heap.insert(nextEdge)
            }
        }
    }

}

print(rs)



