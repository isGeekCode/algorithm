import Foundation

/*
 정수 배열 arr가 주어집니다. arr를 이용해 새로운 배열 stk를 만드려고 합니다.

 변수 i를 만들어 초기값을 0으로 설정한 후 i가 arr의 길이보다 작으면 다음 작업을 반복합니다.

 만약 stk가 빈 배열이라면 arr[i]를 stk에 추가하고 i에 1을 더합니다.
 stk에 원소가 있고, stk의 마지막 원소가 arr[i]보다 작으면 arr[i]를 stk의 뒤에 추가하고 i에 1을 더합니다.
 stk에 원소가 있는데 stk의 마지막 원소가 arr[i]보다 크거나 같으면 stk의 마지막 원소를 stk에서 제거합니다.
 위 작업을 마친 후 만들어진 stk를 return 하는 solution 함수를 완성해 주세요.
 
 arr    result
 [1, 4, 2, 5, 3]    [1, 2, 3]
 */


/// 1. 아이디어
/// - i < arr의 길이 보다 작은 경우 : 아래 과정 반복
///     - stk가 빈배열인경우
///         - arr[i]를 stk에 추가
///         - i += 1
///     - stk에 원소가 있는 경우
///         - stk.last < arr[i]
///             - stk.append(arr[i])
///             - i += 1
///         - stk.last >= arr[i]
///             - stk의 마지막 원소를 stk에서 제거 ::drop.last??
/// 2. 시간복잡도
/// 3. 자료구조
/// - i: Int => 변수



func solution(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    var i = 0
    
    while i < arr.count {
        if stk.isEmpty || (stk.last! < arr[i]) {
            stk.append(arr[i])
            i += 1
        } else {
            stk.removeLast()
        }
    }
    return stk
}
let input = [1, 4, 2, 5, 3]
print(solution(input))

// MARK: <#제목#>


/**
 
 - 문제
 <#문제 설명#>
 
 - 입력
 <#입력 설명#>
 
 - 예제 입력 :
 <#abc...#>
 
 - 출력
 <#출력 설명#>
 
 - 예제 출력 :
 <#abc...#>
 
 */

// MARK: 내 답
/// 1. 아이디어
/// 2. 시간복잡도
/// 3. 자료구조


// MARK: Insight
/*
 <#text#>
 */


// MARK: Other Idea
/*
 <#text#>
 */


// MARK: 다른 답 중 인상적인 답
