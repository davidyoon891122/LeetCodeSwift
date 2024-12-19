import UIKit

class Solution {
    
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 || numRows > s.count {
            return s
        }
        
        var idx = 0
        var d = 0
        
        
        var rows: [[String]] = []

        for _ in 0...numRows - 1 {
            rows.append([])
        }
        
        for char in s {
            rows[idx].append(String(char))
            
            if idx == 0 {
                d = 1
            } else if idx == numRows - 1 {
                d = -1
            }
            
            idx += d
        }
        
        return rows.map { $0.joined() }.joined()
    }
    
}

let solution = Solution()

solution.convert("Hello", 3)


