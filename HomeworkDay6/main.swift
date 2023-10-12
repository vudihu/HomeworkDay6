//
//  main.swift
//  HomeworkDay6
//
//  Created by Hung Vu on 12/10/2023.
//

import Foundation


//9. Palindrome Number
class Palindrome {
    func isPalindrome(x: Int) -> Bool {
        let reversedNumber = String(String(x).reversed())
        return reversedNumber == String(x)
    }

    func inputNumber() {
        print("input: ")
        if let input = readLine(), let number = Int(input) {
            let palindromeNumber = isPalindrome(x: number)
            if palindromeNumber {
                print("true")
            } else {
                print("false")
            }
        } else {
            print("wrong")
        }
    }
}
let palindrome = Palindrome()
palindrome.inputNumber()


// 10. Roman to Integer
class Roman {
    func romanToInt(_ roman: String) -> Int? {
        // Khai bao 1 dictionany, anh xa cac ky tu vao cac so
        let romanDictionany: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var number: Int = 0
        var preValue: Int = 0
        for char in roman.reversed() {
            guard let value = romanDictionany[char] else {
                return nil
            }
            if value < preValue {
                number -= value
            } else {
                number += value
                preValue = value
            }
        }
        return number
    }
    func inputCharacter() {
        print("Roma input: ")
        if let input = readLine() {
            let result = romanToInt(input)
            if let decimalValue = result {
                print("Int value: \(decimalValue)")
            } else {
                print("Wrong input")
            }
        }
    }
}
let roman = Roman()
roman.inputCharacter()

// 11.Merge Two Sorted Lists
