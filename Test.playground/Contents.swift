import UIKit

let s = "0123456789"
let length = 1
let start = 0
let begin = s.index(s.startIndex, offsetBy: start)
let end = s.index(begin, offsetBy: length)
let subStr = s[begin...end]
