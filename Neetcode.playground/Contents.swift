import Cocoa

// 2. Valid Anagram

func isAnagram(_ s: String, _ t: String) -> Bool {
    var dictS: [Character: Int] = [:]
    var dictT: [Character: Int] = [:]

    if s.count != t.count {
        return false
    } else {
        for i in s {
            dictS.updateValue(s.filter{ $0 == i }.count, forKey: i)
        }
        for i in t {
            dictT.updateValue(t.filter{ $0 == i }.count, forKey: i)
        }
        if !(dictS == dictT) {
            return false
        }
    }
    return true
}

// TEST CASES
isAnagram("anagram", "nagaram")
isAnagram("rat", "car")

// ALTERNATIVE SOLUTIONS
//func isAnagram(_ s: String, _ t: String) -> Bool {
//    var Ssorted = s.sorted()
//    var Tsorted = t.sorted()
//
//    if Ssorted == Tsorted {
//        return true
//    } else {
//        return false
//    }
//}

// 1. Contains Duplicate
func containsDuplicate(_ nums: [Int]) -> Bool {
    var hashSet: Set<Int> = []

    for item in nums {
        if hashSet.contains(item) {
            return true
        } else {
            hashSet.insert(item)
        }
    }
    return false
}

// TEST CASES
containsDuplicate([2,14,18,22,22,22,22])

// MY SOLUTION
//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var myNums = nums
//    for item in myNums {
//        if myNums.contains(item) {
//            if let index = myNums.firstIndex(of: item) {
//                myNums.remove(at: index)
//                if myNums.contains(item) {
//                    return true
//                }
//            }
//        } else {
//            containsDuplicate(myNums)
//        }
//    }
//    return false
//}


