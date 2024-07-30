////
////  Muz03.swift
////  Algorithm
////
////  Created by 방현석 on 7/24/24.
////
//
//import Foundation
//
//// 좌표를 파싱하는 함수
//func parseCoordinate(_ coordinate: String) -> (Int, Int) {
//    let cleaned = coordinate.trimmingCharacters(in: CharacterSet(charactersIn: "()"))
//    let parts = cleaned.split(separator: ",").map { Int($0)! }
//    return (parts[0], parts[1])
//}
//
//// 주어진 두 좌표로 퀸이 킹을 체크하고 있는지 확인하는 함수
//func isKingInCheck(queen: (Int, Int), king: (Int, Int)) -> Bool {
//    let (qx, qy) = queen
//    let (kx, ky) = king
//
//    // 퀸이 킹을 같은 행, 열 또는 대각선에서 체크하는지 확인
//    return qx == kx || qy == ky || abs(qx - kx) == abs(qy - ky)
//}
//
//// 킹이 주어진 위치로 이동 가능한지 확인하는 함수
//func isSafePosition(queen: (Int, Int), position: (Int, Int)) -> Bool {
//    let (kx, ky) = position
//
//    // 킹이 체스판을 벗어나지 않는지 확인
//    if kx < 1 || kx > 8 || ky < 1 || ky > 8 {
//        return false
//    }
//
//    // 새로운 위치가 퀸의 공격 범위에 있지 않은지 확인
//    return !isKingInCheck(queen: queen, king: position)
//}
//
//// 킹이 이동할 수 있는 안전한 위치의 수를 계산하는 함수 BFS
//func safeMovesCount(king: (Int, Int), queen: (Int, Int)) -> Int {
//    let moves = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]
//    var safeCount = 0
//
//    for move in moves {
//        let newPosition = (king.0 + move.0, king.1 + move.1)
//        if isSafePosition(queen: queen, position: newPosition) {
//            safeCount += 1
//        }
//    }
//
//    return safeCount
//}
//
//// MatrixChallenge 함수
//func MatrixChallenge(_ strArr: [String]) -> Int {
//    // 퀸과 킹의 위치 파싱
//    let queen = parseCoordinate(strArr[0])
//    let king = parseCoordinate(strArr[1])
//
//    // 킹이 체크 상태인지 확인
//    if !isKingInCheck(queen: queen, king: king) {
//        return -1
//    }
//
//    // 킹이 이동할 수 있는 안전한 위치의 수를 계산
//    return safeMovesCount(king: king, queen: queen)
//}
//
//// 입력을 받고 유효성 검사 및 변환
//if let input = readLine() {
//    let trimmedInput = input.trimmingCharacters(in: CharacterSet(charactersIn: "[] "))
//    let elements = trimmedInput.split(separator: "\"")
//        .filter{ $0 != ","}
//        .map {$0.trimmingCharacters(in: .whitespacesAndNewlines)}
//    
//    if elements.count == 2 {
//        // 각 위치를 개별 문자열로 처리하고, 좌표로 변환
//        let (queenPos, kingPos) = (elements[0], elements[1])
//        let inputArr = [queenPos, kingPos]
//        print(MatrixChallenge(inputArr))
//    } else {
//        print("Invalid input")
//    }
//} else {
//    print("No input")
//}
//
//// ["(3,1)","(4,4)"]
//
//// ["(1,1)","(1,4)"]
