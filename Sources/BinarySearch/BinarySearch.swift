import Foundation

public class BinarySearch {
   /**
    * Finds a correct index to insert an item at (finds the optimal spot for unkown index)
    * - Description: Basically the binaryIndex finds the next index or the end index in a sorted array
    * ## Examples:
    * var numbers = [9, 15, 91]
    * let idx = binaryIndex(numbers, 11) // 1
    * numbers.insert(key, at: idx)
    * print(numbers) // [9, 11, 15, 91]
    * - Note: we use a closure because protocols can't have comparable
    * - Fixme: ⚠️️ Try to get rid of the closure by using Element and Collection. See the Array types.
    * - Use tuple range for start and end
    */
   public static func binaryIndex<T: Comparable>(_ arr: [T], i: T, range: Range<Int>? = nil) -> Int { // the closure works if T is Int
      let range = range ?? 0..<arr.count // if no range is provided use items count as max of range
      if range.lowerBound == range.upperBound {
         return range.lowerBound // i doesn't exist, this is the closest at: \(start)
      }
      let mid: Int = range.lowerBound + ((range.upperBound - range.lowerBound) / 2) // start + middle of the distance between start and end
      if i < arr[mid] { // index is in part1
         return binaryIndex(arr, i: i, range: range.lowerBound..<mid)
      } else if i > arr[mid] { // index is in part2
         return binaryIndex(arr, i: i, range: (mid + 1)..<range.upperBound)
      } else { // index is at middleIndex
         return mid
      }
   }
   /**
    * Finds a the index of an item
    * - NOTE: Binary search does not find an index if the key you search for is not present in the array
    * ## Examples:
    * let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
    * binarySearch(numbers, key: 43) // output: 13 which is the index of where the key is
    */
   public static func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>? = nil) -> Int? {
      let range = range ?? 0..<a.count // if no range is provided use items count as max of range
      if range.lowerBound >= range.upperBound {
         return nil // If we get here, then the search key is not present in the array.
      } else {
         let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2 // Calculate where to split the array.
         if a[midIndex] > key { // Is the search key in the left half?
            return binarySearch(a, key: key, range: range.lowerBound..<midIndex)
         } else if a[midIndex] < key { // Is the search key in the right half?
            return binarySearch(a, key: key, range: (midIndex + 1)..<range.upperBound)
         } else { // If we get here, then we've found the search key!
            return midIndex
         }
      }
   }
}

//public static func binaryIndex<T, P: Comparable>(_ arr: [T], i: P, range: Range<Int>? = nil, closure: (T) -> P = { $0 as! P }
