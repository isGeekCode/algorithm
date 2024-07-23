////
////  Tvn.swift
////  Algorithm
////
////  Created by 방현석 on 7/23/24.
////
//
//import Foundation
//
////func solution(_ strs:[String]) -> String {
////    if strs.isEmpty {
////        return ""
////    }
////    // 첫번째 문자열을 첫 접두사세팅
////    var prefix = strs[0]
////
////    for str in strs.dropFirst() {
////        while !str.hasPrefix(prefix) {
////            prefix.removeLast()
////
////            if prefix.isEmpty { return ""}
////        }
////
////    }
////
////    return prefix
////}
////
////let strs = ["abcaefg", "abcdefg", "abcdhfg"]
////print(solution(strs))
//
//
////
////func solution(_ logs:[String]) -> Int {
////
//////    let requiredFields = ["team_name", "application_name", "error_level", "message"]
//////    var invalidCount = 0
//////
//////    for log in logs {
//////        if log.count > 100 {
//////            invalidCount += 1
//////            continue
//////        }
//////        let components = log.split(separator: " ")
//////        if components.count != 11 {
//////            invalidCount += 1
//////         continue
//////        }
//////
//////        var isValid = true
//////
//////        for i in stride(from: 0, to: components.count, by: 3) {
//////            let fieldName = components[i].split(separator: ":")[0]
//////            // 필드명 검사
//////            if !requiredFields.contains(String(fieldName)) {
//////                isValid = false
//////                break
//////            }
//////
//////            // 값 검사
//////            let value = components[i+1]
//////            // 빈값 여부, 알파벳만 포함하는지 체크
//////            if value.isEmpty || value.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
//////                isValid = false
//////                break
//////            }
//////
//////            if !isValid {
//////                invalidCount += 1
//////            }
//////        }
//////    }
//////
//////    return invalidCount
//////
////
////}
//
////func solution(_ logs: [String]) -> Int {
////    let requiredFields = ["team_name", "application_name", "error_level", "message"]
////    var invalidCount = 0
////
////    for log in logs {
////        if log.count > 100 {
////            invalidCount += 1
////            continue
////        }
////
////
////        let parts = log.split(separator: " ", maxSplits: Int.max, omittingEmptySubsequences: false)
////        if parts.count != 8 {
////            invalidCount += 1
////            continue
////        }
////
////        let fields = log.split(separator: " ", omittingEmptySubsequences: false)
////        if fields.count != 15 {
////            invalidCount += 1
////            continue
////        }
////
////
////        var isValid = true
////
////
////
////        for i in stride(from: 0, to: parts.count, by: 2) {
////            let fieldName = String(parts[i])
////            if !requiredFields.contains(where: { fieldName.contains($0)}) {
////                isValid = false
////                break
////            }
////
////            let value = String(parts[i + 1])
////            if value.isEmpty || value.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
////                isValid = false
////                break
////            }
////        }
////
////        if !isValid {
////            invalidCount += 1
////        }
////    }
////        return invalidCount
////}
//
////
////        var index = 0
////
////
////        while index < fields.count {
////            let fieldName = String(fields[index])
////            if !requiredFields.contains(fieldName) {
////                isValid = false
////                break
////            }
////
////            let valueIndex = index + 2
////            if valueIndex >= fields.count {
////                isValid = false
////                break
////            }
////
////            let value = String(fields[valueIndex])
////            if value.isEmpty || value.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
////                isValid = false
////                break
////            }
////
////            index += 4
////        }
////
////
////        if !isValid {
////            invalidCount += 1
////        }
////    }
////
////    return invalidCount
////}
////
//
//// 테스트 케이스
//let logs = [
//    "team_name : MyTeam application_name : YourApp error_level : info messag : IndexOutOfRange",
//    "no such file or directory",
//    "team_name : recommend application_name : recommend error_level : info message : RecommendSucces11",
//    "team_name : recommend application_name : recommend error_level : info message : Success!",
//    "   team_name : db application_name : dbtest error_level : info message : test",
//    "team_name     : db application_name : dbtest error_level : info message : test",
//    "team_name : TeamTest application_name : TestApplication error_level : info message : ThereIsNoError"
//]
//
//
//let strs = ["team_name : db application_name : dbtest error_level : info message : test", "team_name : test application_name : I DONT CARE error_level : error message : x", "team_name : ThisIsJustForTest application_name : TestAndTestAndTestAndTest error_level : test message : IAlwaysTestingAndIWillTestForever", "team_name : oberervability application_name : LogViewer error_level : error"]
//
//print(solution(strs)) // 리턴값 4  // 기대값 3
//
//print(solution(logs)) // 리턴값 7 // 기대값 6
//
//
////func solution(_ logs: [String]) -> Int {
////    let requiredFields = ["team_name", "application_name", "error_level", "message"]
////    var invalidCount = 0
////
////    for log in logs {
////        if log.count > 100 {
////            invalidCount += 1
////            continue
////        }
////
////        let parts = log.components(separatedBy: " : ")
////        if parts.count != 4 {
////            invalidCount += 1
////            continue
////        }
////
////        var isValid = true
////        //        var index = 0
////        var fields = [String]()
////
////        for part in parts {
////            let splitPart = part.split(separator: " ", maxSplits: 1, omittingEmptySubsequences: false).map{String($0)}
////
////
////            if splitPart.count == 2 {
////                fields.append(splitPart[0])
////
////                let value = splitPart[1].trimmingCharacters(in: .whitespacesAndNewlines)
////                if value.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
////                    isValid = false
////                    break
////                }
////            } else {
////                isValid = false
////                break
////            }
////        }
////
////        if isValid && fields == requiredFields {
////            continue
////        } else {
////
////            invalidCount += 1
////        }
////
////    }
////    return invalidCount
////}
//
//
//import Foundation
//
////func solution(_ logs: [String]) -> Int {
////    let pattern = "team_name : [a-zA-Z]+ application_name : [a-zA-Z]+ error_level : [a-zA-Z]+ message : [a-zA-Z]+"
////    var invalidCount = 0
////
////    for log in logs {
////        if log.count > 100 {
////            invalidCount += 1
////            continue
////        }
////
////        let regex = try! NSRegularExpression(pattern: pattern, options: [])
////        let range = NSRange(location: 0, length: log.utf16.count)
////        if regex.firstMatch(in: log, options: [], range: range) == nil {
////            invalidCount += 1
////        }
////    }
////
////    return invalidCount
////}
//
//
//import Foundation
//
//func solution(_ logs: [String]) -> Int {
//    let pattern = "^team_name : [a-zA-Z]+ application_name : [a-zA-Z]+ error_level : [a-zA-Z]+ message : [a-zA-Z0-9 ]+$"
//    var invalidCount = 0
//
//    for log in logs {
//        // 로그 100초과
//        if log.count > 200{
//            invalidCount += 1
//            continue
//        }
//        
//        // 로그의 앞뒤 공백 제거
//        let trimmedLog = log.trimmingCharacters(in: .whitespacesAndNewlines)  // Trim leading and trailing whitespaces
//        let regex = try! NSRegularExpression(pattern: pattern, options: [])
//        let range = NSRange(location: 0, length: trimmedLog.utf16.count)
//        
//        // 정규 표현ㅅ닉과 일치 하지 않는 경우 유효하지 않음처리
//        if regex.firstMatch(in: trimmedLog, options: [], range: range) == nil {
//            invalidCount += 1
//        }
//    }
//
//    return invalidCount
//}
//
//
//func solution(_ width:Int, _ height:Int, _ diagonals:[[Int]]) -> Int {
//    
//    let MOD = 10_000_019
//    
//    var dp = Array(repeating: Array(repeating: 0, count: height + 1), count: width + 1)
//    dp[0][1] = 1
//    
//    
//    // dp테이블 초기화
//    for i in 1...width {
//        for j in 1...height {
////            if i == 1 && j == 1 { continue }
//            dp[i][j] = (dp[i - 1][j] + dp[i][j - 1] ) % MOD
//        }
//    }
//    
//    var result = 0
//    
//    for diagonal in diagonals {
//        let (x, y) = (diagonal[0], diagonal[1])
//        
//        // 대각선 이용하는 경로
//        let pathThroughDia = (dp[x][y] * dp[width - x + 1][height - y + 1] % MOD)
//        
//        result = (result + pathThroughDia) % MOD
//    }
//    
//    return result
//}
//
//
//func solution(_ width: Int, _ height: Int, _ diagonals: [[Int]]) -> Int {
//    let MOD = 10_000_019
//    var dp = Array(repeating: Array(repeating: 0, count: height + 1), count: width + 1)
//    dp[1][1] = 1  // 시작 지점이 (1, 1)이므로, 0 기반 인덱스로 처리
//
//    // 전체 격자에 대한 경로 수 계산
//    for i in 1...width {
//        for j in 1...height {
//            dp[i][j] = (dp[i][j] + dp[i-1][j] + dp[i][j - 1]) % MOD
//        }
//    }
//
//    var result = 0
//
//    // 각 대각선을 활용한 경로 계산
//    for diagonal in diagonals {
//        let x = diagonal[0]
//        let y = diagonal[1]
//
//        // 대각선을 지나는 경로 계산
//        let beforeDiagonal = dp[x][y] // 대각선 시작 전까지의 경로 수
//        
//        
//        var dpAfter = Array(repeating: Array(repeating: 0, count: height + 2), count: width + 2)
//        dpAfter[x + 1][y + 1] = beforeDiagonal
//        
//        for i in x+1...width {
//            for j in y+1...height {
//                dpAfter[i][j] = (dpAfter[i][j] + dpAfter[i-1][j] + dpAfter[i][j-1]) % MOD
//            }
//        }
//        
//        result = (result + dpAfter[width][height]) % MOD
//    }
//
//    return result
//}
//
//// 입력 예제 실행
//print(solution(2, 2, [[1, 1], [2, 2]]))  // 결과: 12
//print(solution(51, 37, [[17, 19]]))      // 결과: 3225685
//
//
//func solution(_ width: Int, _ height: Int, _ diagonals: [[Int]]) -> Int {
//    let MOD = 10_000_019
//    var dp = Array(repeating: Array(repeating: 0, count: height + 2), count: width + 2)
//    
//    // (1, 1)부터 시작
//    dp[1][1] = 1
//
//    // 모든 격자에 대해 경로 계산
//    for i in 1...width {
//        for j in 1...height {
//            dp[i][j] = (dp[i][j] + dp[i - 1][j] + dp[i][j - 1]) % MOD
//        }
//    }
//    
//    var result = 0
//    
//    // 대각선을 통과하는 경로 계산
//    for diagonal in diagonals {
//        let x = diagonal[0]
//        let y = diagonal[1]
//
//        // 대각선 이전까지의 경로 수
//        let beforeDiagonal = dp[x][y]
//        
//        // 대각선 건넌 후의 경로 수 재계산
//        var dpAfter = Array(repeating: Array(repeating: 0, count: height + 2), count: width + 2)
//        dpAfter[x + 1][y + 1] = beforeDiagonal
//        
//        for i in x+1...width {
//            for j in y+1...height {
//                dpAfter[i][j] = (dpAfter[i][j] + dpAfter[i - 1][j] + dpAfter[i][j - 1]) % MOD
//            }
//        }
//        
//        // (width, height)까지의 경로 수 추가
//        result = (result + dpAfter[width][height]) % MOD
//    }
//    
//    return result
//}
//
//// 입력 예제 실행
//print(solution(2, 2, [[1, 1], [2, 2]]))  // 예상 결과: 12
//print(solution(51, 37, [[17, 19]]))      // 예상 결과: 3225685
//
//
//func solution(_ width: Int, _ height: Int, _ diagonals: [[Int]]) -> Int {
//    let MOD = 10_000_019
//    var dp = Array(repeating: Array(repeating: 0, count: height + 1), count: width + 1)
//    
//    // 기본 경로 수 계산
//    dp[1][1] = 1
//    for i in 1...width {
//        for j in 1...height {
//            if i > 1 {
//                dp[i][j] += dp[i - 1][j]
//            }
//            if j > 1 {
//                dp[i][j] += dp[i][j - 1]
//            }
//            dp[i][j] %= MOD
//        }
//    }
//
//    var totalPaths = 0
//    
//    // 각 대각선에 대하여
//    for diagonal in diagonals {
//        let x = diagonal[0]
//        let y = diagonal[1]
//
//        if x + 1 <= width && y + 1 <= height {
//            let throughDiagonal = (dp[x][y] * dp[width - x][height - y]) % MOD
//            totalPaths = (totalPaths + throughDiagonal) % MOD
//        }
//    }
//
//    return totalPaths
//}
//
//// 테스트 케이스
//print(solution(2, 2, [[1, 1], [2, 2]]))  // 예상 결과: 12
////print(solution(51, 37, [[17,
