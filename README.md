# BinarySearch
BinarySearch methods

### Install:
- SPM: `.package(url: "https://github.com/eonist/BinarySearch.git", .branch("master"))`

### Examples:

```swift
let key = 11
var numbers = [9, 15, 91]
let idx = binaryIndex(numbers, key, 0, numbers.count) // 1
if idx >= numbers.count || numbers[idx] != key { numbers.insert(key, at: idx) }
print(numbers) // [9, 11, 15, 91]
```

```swift
let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 43, range: 0..< numbers.count) // output: 13 which is the index of where the key is
```

### Resources:
- https://github.com/giannif/BinarySearch/
- https://github.com/mkeiser/BinarySearch/
- https://github.com/ningmengjean/binary-search
