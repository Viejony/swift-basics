// Subscripts

struct TimesTable{
    let multiplier: Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("6x3 = \(threeTimesTable[6])")


for idx in 1...10{
    print("\(idx) x 3 = \(threeTimesTable[idx])")
}


// Matrices

struct Matrix{
    let rows: Int
    let columns: Int
    var grid: [Double]

    init(rows: Int, columns: Int){
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: 0.0, count: rows * columns)
    }

    func indexIsValid(row: Int, column: Int) -> Bool{
        return row >= 0 && column >= 0 && row < rows && column < columns
    }

    subscript(row: Int, column: Int) -> Double{
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }

    func printMatrix(){
        for row in 0..<self.rows{
            for column in 0..<self.columns{
                print(grid[(row * columns) + column], terminator: ", ")
            }
            print()
        }
    }
}

var matrix = Matrix(rows: 3, columns: 2)
matrix[0, 0] = 1
matrix[0, 1] = 2
matrix[1, 0] = 3
matrix[1, 1] = 4
print(matrix.grid)
print(matrix[1, 1])
print()
matrix.printMatrix()