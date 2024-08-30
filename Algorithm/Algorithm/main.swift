import Foundation

/*
 boolean 변수 x1, x2, x3, x4가 매개변수로 주어질 때, 다음의 식의 true/false를 return 하는 solution 함수를 작성해 주세요.

 (x1 ∨ x2) ∧ (x3 ∨ x4)

 ∨ :: OR
 ∨∧ :: AND

 
 x1    x2    x3    x4          result
 false    true    true    true    true
 true    false    false    false    false
 */






func solution(_ x1:Bool, _ x2:Bool, _ x3:Bool, _ x4:Bool) -> Bool {
    
    let a = x1 || x2
    let b = x3 || x4
    
    return a && b
}


print(solution(false, true, true, true))
//print(solution(true, false, false, false))

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
