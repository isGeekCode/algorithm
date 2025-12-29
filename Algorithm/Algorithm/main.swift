import Foundation

//
//  BJ_1926_BFS.swift
//  Algorithm
//
//  Created by 방현석 on 5/31/24.
//
//
//import Foundation
//
// MARK: 그림
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
// MARK: 내 답

let input = """
6 5
1 1 0 1 1
0 1 1 0 0
0 0 0 0 0
1 0 1 1 1
0 0 1 1 1
0 0 1 1 1
"""


var lines = input.split(separator: "\n")
let size = lines.removeFirst().split(separator: " ").map{ Int($0)!}
let (n,m) = (size[0], size[1])
var grid = [[(Int)]]()

for r in lines {
    let row = r.split(separator: " ").map{ Int($0)! }
    grid.append(row)
}
var visited = Array(repeating: Array(repeating: false, count: m), count: n)
func canVisit(_ r: Int, _ c: Int) -> Bool {
    return grid[r][c] == 1 && !visited[r][c]
}
var maxArea = 0
var count = 0

for i in 0 ..< n {
    for j in 0 ..< m {
        if canVisit(i, j) {
            count += 1
            maxArea = max(maxArea, bfs(i,j))
        }
    }
}
print(count)
print(maxArea)

func bfs(_ r: Int, _ c: Int) -> Int {
    var area = 1
    var head = 0
    var q = [(r, c)]
    
    let dr = [0,0,1,-1]
    let dc = [1,-1,0,0]
    visited[r][c] = true
    
    while head < q.count {
        let (r, c) = q[head]
        head += 1
        
        if head > 1024 {
            q.removeFirst(1024)
            head = 0
        }
        
        for i in 0..<4 {
            let nr = r + dr[i]
            let nc = c + dc[i]
            
            if 0 <= nr, nr < n,
               0 <= nc, nc < m,
               canVisit(nr, nc) {
                q.append((nr,nc))
                visited[nr][nc] = true
                area += 1
            }
            
        }
    }
    
        
    return area
}








//var lines = input.split(separator: "\n")
//let size = lines.removeFirst().split(separator: " ").map { Int($0)! } // 첫줄
//let (n, m) = (size[0], size[1])
//var grid = [[Int]]()
//grid.reserveCapacity(n)
//for i in 0..<n {
//    let row = lines[i].split(separator: " ").map { Int($0)! }
//    grid.append(row)
//}
//
//var visited = Array(repeating: Array(repeating: false, count: m), count: n)
//
//func canVisit(_ sX: Int, _ sY: Int) -> Bool {
//    return grid[sX][sY] == 1 && !visited[sX][sY]
//}
//
//func bfs(_ sX: Int, _ sY: Int) -> Int {
//    visited[sX][sY] = true
//    var head = 0
//    var area = 1
//    var q = [(sX, sY)]
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    
//    while head < q.count {
//        let (r,c) = q[head]
//        head += 1
//        
//        if head > 4096 {
//            q.removeFirst(head)
//            head = 0
//        }
//        
//        for i in 0..<4 {
//            let nr = r + dx[i]
//            let nc = c + dy[i]
//            
//            if 0 <= nr, nr < n,
//               0 <= nc, nc < m,
//               canVisit(nr, nc) {
//                q.append((nr,nc))
//                visited[nr][nc] = true
//                area += 1
//            }
//        }
//    }
//    return area
//}
//
//func dfs(_ sr: Int, _ sc: Int) -> Int {
//    visited[sr][sc] = true
//    var area = 1
//    
//    let dr = [0,0,1,-1]
//    let dc = [1,-1,0,0]
//    
//    for i in 0..<4 {
//        let nr = sr + dr[i]
//        let nc = sc + dc[i]
//        
//        if 0 <= nr, nr < n,
//           0 <= nc, nc < m,
//           canVisit(nr, nc) {
//            area += dfs(nr, nc)
//        }
//    }
//    return area
//}

//
//func dfsWithStack(_ sr: Int, _ sc: Int) -> Int {
//    var s = [(sr,sc)]
//    var area = 0
//    visited[sr][sc] = true
//    
//    let dr = [0,0,1,-1]
//    let dc = [1,-1,0,0]
//    
//    while !s.isEmpty {
//        let (r,c) = s.removeLast()
//        area += 1
//        
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//            
//            if 0 <= nr, nr < n,
//               0 <= nc, nc < m,
//               canVisit(nr, nc) {
//                visited[nr][nc] = true
//                s.append((nr,nc))
//            }
//            
//        }
//    }
//    return area
//}
//
//var count = 0
//var maxArea = 0
//
//for i in 0..<n {
//    for j in 0..<m {
//        if canVisit(i, j) {
//            //            maxArea = max(maxArea,bfs(i, j))
//            //            maxArea = max(maxArea,dfs(i, j))
//            maxArea = max(maxArea, dfsWithStack(i, j))
//            count += 1
//        }
//    }
//}
//
//print(count)
//print(maxArea)

// MARK: Insight
///*
/// [ 내 풀이하면서 깨달은 것 ]
/// - 2차원 배열은 무조건 grid[row][col]로 고정: row = n(세로), col = m(가로)
/// - visited도 동일한 구조 [n][m]로 만들고 visited[row][col]로 접근하면 인덱스 실수가 줄어든다.
/// - 연결요소 문제의 핵심은 "방문 처리 타이밍": 큐/스택에 넣는 순간(enqueue/push)에 visited = true를 찍어야 중복 삽입이 없다.
/// - BFS 큐를 배열로 구현할 때 removeFirst()는 느릴 수 있어 head 인덱스를 쓰는 패턴이 실전적이다.
/// - 재귀 DFS는 최악(500x500 전체 1)에서 깊이가 nm까지 커질 수 있어 Swift에서 EXC_BAD_ACCESS(스택 오버플로) 위험이 있다.
/// - 시간복잡도는 각 칸을 최대 1번 방문하고 방문 시 4방향만 확인하므로 O(n*m) (그래프 관점 O(V+E)).
/// */

// MARK: Other Idea
///*
/// [다른 접근/개선 아이디어]
/// - visited를 없애고 방문한 칸을 grid[r][c] = 0으로 바꾸는 방식도 가능(메모리 절약 + 조건 단순화).
/// - DFS를 쓰고 싶다면 재귀 대신 반복 DFS(스택)로 구현하면 스택 오버플로를 피할 수 있다.
/// - 범위 체크는 호출부에서 하고 canVisit은 값/방문만 담당하게 분리하면(=inBounds + canVisit) 안전하고 가독성이 좋아진다.
/// - 큐가 아주 커질 수 있는 문제에서는 head가 커질 때 q.removeFirst(head)로 주기적으로 앞부분을 정리하거나, Deque(링버퍼)를 직접 구현하는 방법도 있다.
/// */

//// MARK: 다른 답 중 인상적인 답
///*
/// [다른 사람 풀이 보면서 인상 깊었던 포인트]
/// - 입력이 큰 문제에서 FastScanner(바이트 단위 파싱)로 split/readLine 병목을 확 줄이는 구현.
/// - visited 배열 없이 grid 자체를 0으로 바꾸며 방문 처리하는 깔끔한 풀이(메모리/코드 둘 다 단순).
/// - Deque를 직접 구현해서 BFS를 O(1) pop/push로 안정적으로 처리하는 방식.
/// */
