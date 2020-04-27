import UIKit

class View: UIView {
   override init(frame: CGRect) {
      super.init(frame: frame)
      let key = 11
      var numbers = [9, 15, 91]
      let idx: Int = BinarySearch.binaryIndex(numbers, i: key, start: 0, end: numbers.count) // 1
      if idx <= numbers.count || numbers[idx] != key { // assert that index is real, and avoid dups
         numbers.insert(key, at: idx)
      }
      print(numbers) // [9, 11, 15, 91]
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
