//
//  HeapTemplate.swift
//  Algorithm
//
//  Created by 방현석 on 6/5/24.
//

import Foundation

/// `Heap`은 최소 힙을 구현하는 제네릭 구조체. `Comparable` 프로토콜을 준수하는 타입 T에 대해 작동.
struct Heap<T: Comparable> {
    /// 힙의 내부 배열. 모든 요소는 이 배열에 저장.
    private var items: [T] = []
    
    /// 힙이 비어 있는지 확인. 비어있으면 true를 반환.
    var isEmpty: Bool {
        return items.isEmpty
    }
    
    /// 새 요소를 힙에 삽입.
    /// - Parameter element: 힙에 삽입할 요소.
    mutating func insert(_ element: T) {
        items.append(element)  // 배열의 끝에 새 요소 추가
        siftUp(from: items.count - 1)  // 삽입된 요소를 적절한 위치로 이동시키기 위해 siftUp 메서드를 호출.
    }
    
    /// 힙에서 최소 요소를 제거하고 반환
    /// - Returns: 힙의 최소 요소. 힙이 비어 있다면 nil을 반환
    mutating func extractMin() -> T? {
        guard !items.isEmpty else { return nil }  // 힙이 비어있으면 nil 반환
        if items.count == 1 {
            return items.removeFirst()  // 요소가 하나뿐이면 바로 제거하고 반환
        }
        let min = items[0]  // 최소 요소(루트 요소) 저장
        items[0] = items.removeLast()  // 마지막 요소를 루트 위치로 이동
        siftDown(from: 0)  // 새 루트를 적절한 위치로 이동시키기 위해 siftDown 메서드를 호출
        return min  // 최소 요소 반환
    }
    
    /// 주어진 인덱스의 요소를 부모와 비교하며 위로 이동
    /// - Parameter index: sift up을 시작할 배열 인덱스
    private mutating func siftUp(from index: Int) {
        var childIndex = index
        let child = items[childIndex]  // 삽입된 요소
        var parentIndex = (childIndex - 1) / 2
        
        while childIndex > 0 && items[parentIndex] > child {
            items[childIndex] = items[parentIndex]  // 부모 요소가 자식 요소보다 크면 위치 교환
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
        
        items[childIndex] = child
    }
    
    /// 주어진 인덱스의 요소를 자식과 비교하며 아래로 이동
    /// - Parameter index: sift down을 시작할 배열 인덱스
    private mutating func siftDown(from index: Int) {
        var parentIndex = index
        let length = items.count
        let element = items[parentIndex]
        
        while true {
            let leftChildIndex = 2 * parentIndex + 1
            let rightChildIndex = leftChildIndex + 1
            var smallestIndex = parentIndex
            
            if leftChildIndex < length && items[leftChildIndex] < items[smallestIndex] {
                smallestIndex = leftChildIndex
            }
            if rightChildIndex < length && items[rightChildIndex] < items[smallestIndex] {
                smallestIndex = rightChildIndex
            }
            if smallestIndex == parentIndex {
                break  // 추가 교환 필요 없으면 종료
            }
            items[parentIndex] = items[smallestIndex]
            items[smallestIndex] = element
            parentIndex = smallestIndex
        }
    }
}

func exam(sample: Int) {
    var minHeap = Heap<Int>()
    minHeap.insert(10)
    minHeap.insert(5)
    minHeap.insert(15)
//    print(minHeap.extractMin()) // 5
//    print(minHeap.extractMin()) // 10
//    print(minHeap.extractMin()) // 15

}


// MARK: 추가해 사용할 비교군 Comparable 프로토콜을 채택해야한다.
// 이후 비교 연산자를 구현하여 비교할 수 있도록 구현한다.
// 여기서는 cost를 이용해서 비교한다.
struct Edge: Comparable {
    let cost: Int
    let node: Int

    // Comparable 프로토콜 요구사항 구현
    static func < (lhs: Edge, rhs: Edge) -> Bool {
        return lhs.cost < rhs.cost
    }
}

func exam(sample: Edge) {
    // Edge 구조체를 활용한 사용 예시
    var minHeap = Heap<Edge>() // 최소 힙 생성

    // 여러 간선을 힙에 추가
    minHeap.insert(Edge(cost: 10, node: 2))
    minHeap.insert(Edge(cost: 5, node: 3))
    minHeap.insert(Edge(cost: 2, node: 4))
    minHeap.insert(Edge(cost: 7, node: 5))
    minHeap.insert(Edge(cost: 3, node: 6))

    // 최소 비용 간선부터 추출하여 출력
    while !minHeap.isEmpty {
        if let edge = minHeap.extractMin() {
            print("Edge to node \(edge.node) with cost \(edge.cost)")
        }
    }

    // 예상 출력:
    // Edge to node 4 with cost 2
    // Edge to node 3 with cost 5
    // Edge to node 6 with cost 3
    // Edge to node 5 with cost 7
    // Edge to node 2 with cost 10
}
