//
//  main.swift
//  Baekjoon1000
//
//  Created by bang_hyeonseok on 2022/03/04.
//

import Foundation

//print((readLine()?.split(separator: "  ").map { Int($0)! }.reduce(0, +))!)



//readLine()은 String Optional로 반환한다.
let input = readLine()

//split()은 [SubString]로 반환한다.
let inputarr = input?.split(separator: " ")
//let inputIntArr = inputarr.map { (value: String) -> Int in
//    Int(value)!
//}




let array = ["1","2","3","4","5"]
let numArr = array.map { (value: String) -> Int in
        Int(value)!
    }



//reduce

print(numArr)
