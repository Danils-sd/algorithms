//  quickSort

import Foundation

func quickSort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }
    
    let median = arr[arr.count/2]
    let less = arr.filter { $0 < median }
    let equal = arr.filter { $0 == median }
    let greater = arr.filter { $0 > median}
    
    return quickSort(less) + equal + quickSort(greater)
}
