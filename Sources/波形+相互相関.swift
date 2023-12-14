import Foundation

extension 波形 {
  func 相互相関(_ other: Self) -> [Double] {
    let maxShift = サンプリングサイズ - 1
    var result = [Double](repeating: 0.0, count: maxShift * 2 + 1)

    for shift in -maxShift...maxShift {
      var sum = 0.0
      for i in 0..<サンプリングサイズ {
        let j = i + shift
        if j >= 0 && j < サンプリングサイズ {
          sum += 測定値[i] * other.測定値[j]
        }
      }
      result[shift + maxShift] = sum
    }

    return result
  }
}
