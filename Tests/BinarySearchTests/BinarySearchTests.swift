import XCTest
@testable import BinarySearch

final class BinarySearchTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        // XCTAssertEqual(BinarySearch().text, "Hello, World!")
        _ = {}()
    }

    // static var allTests = [
    //     ("testExample", testExample),
    // ]
    /**
    *
    */
   private func test1() {
      let key: Int = 11
      var numbers: [Int] = [9, 15, 91]
      let idx: Int = BinarySearch.binaryIndex(numbers, i: key) // 1
      if idx <= numbers.count || numbers[idx] != key { // assert that index is real, and avoid dups
         numbers.insert(key, at: idx)
      }
      print(numbers) // [9, 11, 15, 91]
   }
   /**
    *
    */
   private func test2() {
      let numbers: [Int] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
      guard let idx: Int = BinarySearch.binarySearch(numbers, key: 43) else { Swift.print("no result"); return }// output: 13 which is the index of where the key is
      Swift.print("idx:  \(idx)") // 13
   }
   /**
    *
    */
   private func test3() {
      let strings: [String] = ["a", "b", "c", "d", "e", "f", "g"]
      guard let idx: Int = BinarySearch.binarySearch(strings, key: "e") else { Swift.print("no result"); return }
      Swift.print("idx:  \(idx)") // 4
   }
   /**
    *
    */
   private func test4() {
      var strings: [String] = ["a", "b", "d", "e", "g", "j", "m"]
      let idx: Int = BinarySearch.binaryIndex(strings, i: "f") // 1
      Swift.print("idx:  \(idx)")
      strings.insert("f", at: idx)
      print(strings) // ["a", "b", "d", "e", "f", "g", "j", "m"]
   }
}
