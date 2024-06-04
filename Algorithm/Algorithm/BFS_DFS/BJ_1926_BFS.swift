import Foundation

////
////  BJ_1926_BFS.swift
////  Algorithm
////
////  Created by 방현석 on 5/31/24.
////
//
//import Foundation
//
//// MARK: 그림
//
//
///**
//
// - 문제
// 어떤 큰 도화지에 그림이 그려져 있을 때, 그 그림의 개수와, 그 그림 중 넓이가 가장 넓은 것의 넓이를 출력하여라. 단, 그림이라는 것은 1로 연결된 것을 한 그림이라고 정의하자. 가로나 세로로 연결된 것은 연결이 된 것이고 대각선으로 연결이 된 것은 떨어진 그림이다. 그림의 넓이란 그림에 포함된 1의 개수이다.
//
//
//
// - 입력
// 첫째 줄에 도화지의 세로 크기 n(1 ≤ n ≤ 500)과 가로 크기 m(1 ≤ m ≤ 500)이 차례로 주어진다. 두 번째 줄부터 n+1 줄 까지 그림의 정보가 주어진다. (단 그림의 정보는 0과 1이 공백을 두고 주어지며, 0은 색칠이 안된 부분, 1은 색칠이 된 부분을 의미한다)
//
//
// - 예제 입력 :
//6 5
//1 1 0 1 1
//0 1 1 0 0
//0 0 0 0 0
//1 0 1 1 1
//0 0 1 1 1
//0 0 1 1 1
//
// - 출력
// 첫째 줄에는 그림의 개수, 둘째 줄에는 그 중 가장 넓은 그림의 넓이를 출력하여라. 단, 그림이 하나도 없는 경우에는 가장 넓은 그림의 넓이는 0이다.
//
//
//
// - 예제 출력 :
// 4
// 9
//
// */
//
//// MARK: 내 답
//let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
//let (n, m) = (firstLine[0], firstLine[1])
//
//var grid = [[Int]]()  // 2차원 배열로 도화지의 정보를 저장
//for _ in 0..<n {
//    let row = readLine()!.split(separator: " ").map { Int($0)! }
//    grid.append(row)
//}
//
//let (n, m) = (6, 5)
//var grid = [
//    [1,1,0,1,1],
//    [0,1,1,0,0],
//    [0,0,0,0,0],
//    [1,0,1,1,1],
//    [0,0,1,1,1],
//    [0,0,1,1,1],
//]
//
//var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//var numPictures = 0 // 그림의 개수
//var maxArea = 0     // 최대 그림의 넓이
//var area = 0
//
//for j in 0..<n { // row y축
//    for i in 0..<m { // column x축
//        if canVisit(j, i) {
//            // 1이면 처리하는 부분
//            let area = bfs(j, i) // 그림 하나당 한번 호출함
//            numPictures += 1
//            maxArea = max(maxArea, area) // 저장되어있던 maxArea와 area를 비교하여 갱신
//        }
//    }
//}
//
//print(numPictures)
//print(maxArea)
//
//
//func canVisit(_ y: Int, _ x: Int) -> Bool {
//    return grid[y][x] == 1 && !visited[y][x]
//}
//
//func bfs(_ y: Int, _ x: Int) -> Int {
//
//    var queue: [(Int, Int)] = [(y, x)] // 시작위치가 큐에 세팅
//    
//    let dy = [1, -1, 0, 0]
//    let dx = [0, 0, 1, -1]
//
//    visited[y][x] = true // 방문처리
//    area = 1 // 최초 좌표의 너비를 더함
//
//    while !queue.isEmpty {
//
//        let current = queue.removeFirst()  // Dequeue 큐에서 현재 위치 추출
//        for i in 0...3 {
//            
//            
//            let y = current.0
//            let x = current.1
//            
//            let ny = y + dy[i]
//            let nx = x + dx[i]
//            
//            if (nx >= 0 && nx < m) && (ny >= 0 && ny < n) { // 범위 이탈 체크
//                if canVisit(ny, nx) { // 현재 체크하는 상하좌우에 1이 있는지, 방문을 안했는지
//                    visited[ny][nx] = true // 방문체크
//                    queue.append((ny, nx)) // Enqueue 발견된 현재 위치를 큐에 추가 ( 큐의 순서대로 이접 4방향 체크 )
//                    area += 1 // 방문X && 인접한 1을 발견할 때마다 1추가
//                }
//            }
//        }
//    }
//    return area
//}


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
