//
//  BJ_2667.swift
//  Algorithm
//
//  Created by 방현석 on 6/2/24.
//

import Foundation

// MARK: 단지번호붙이기

/**
 
 - 문제
 <그림 1>과 같이 정사각형 모양의 지도가 있다. 1은 집이 있는 곳을, 0은 집이 없는 곳을 나타낸다. 철수는 이 지도를 가지고 연결된 집의 모임인 단지를 정의하고, 단지에 번호를 붙이려 한다. 여기서 연결되었다는 것은 어떤 집이 좌우, 혹은 아래위로 다른 집이 있는 경우를 말한다. 대각선상에 집이 있는 경우는 연결된 것이 아니다. <그림 2>는 <그림 1>을 단지별로 번호를 붙인 것이다. 지도를 입력하여 단지수를 출력하고, 각 단지에 속하는 집의 수를 오름차순으로 정렬하여 출력하는 프로그램을 작성하시오.


 
 - 입력
 첫 번째 줄에는 지도의 크기 N(정사각형이므로 가로와 세로의 크기는 같으며 5≤N≤25)이 입력되고, 그 다음 N줄에는 각각 N개의 자료(0혹은 1)가 입력된다.


 
 - 예제 입력 :
 7
 0110100
 0110101
 1110101
 0000111
 0100000
 0111110
 0111000
 
 - 출력
 첫 번째 줄에는 총 단지수를 출력하시오. 그리고 각 단지내 집의 수를 오름차순으로 정렬하여 한 줄에 하나씩 출력하시오.


 - 예제 출력 :
 3
 7
 8
 9
 
 */

// MARK: 내 답
//
//let input = """
//            7
//            0110100
//            0110101
//            1110101
//            0000111
//            0100000
//            0111110
//            0111000
//            """


//let firstLine = readLine()!
//let n = Int(firstLine)!
//var graph = [[Int]]()  // 2차원 배열로 도화지의 정보를 저장
//
//for _ in 0..<n {
//    let str = readLine()!
//    var row = [Int]()
//    for i in str {
//        let t = String(i)
//        row.append(Int(t)!)
//    }
//    graph.append(row)
//}
//
//let width = graph.count
//var chkArr = Array(repeating: Array(repeating: false, count: width), count: width)
//
//var result = [Int]()
//var each = 0
//for j in 0..<width { // row y축
//    for i in 0..<width { // column x축
//        if isCanVisit(j,i) {
//            // 방문 체크
//            chkArr[j][i] = true
//            // DFS 로 크기 구하기
//            each = 0
//            dfs(j,i)
//            // 크기 결과를 리스트에 넣기
//            result.append(each)
//        }
//    }
//}
//
//result.sort()
//print(result.count)
//result.forEach{ print($0) }
//
//func isCanVisit(_ y: Int,_ x: Int) -> Bool {
//    return (graph[y][x] == 1 && chkArr[y][x] == false)
//}
//
//func isRange(_ y: Int, _ x: Int) -> Bool {
//    return (x >= 0 && x < width) && (y >= 0 && y < width)
//}
//
//func dfs(_ y: Int,_ x: Int) {
//    each += 1
//
//    let dy = [0, 1, 0, -1]
//    let dx = [1, 0, -1, 0]
//    
//    for k in 0...3 {
//        let ny = y + dy[k]
//        let nx = x + dx[k]
//        
//        if isRange(ny, nx) {
//            if isCanVisit(ny, nx) {
//                chkArr[ny][nx] = true
//                dfs(ny, nx)
//            }
//        }
//    }
//}




// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
