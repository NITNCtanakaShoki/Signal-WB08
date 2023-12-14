import Foundation

extension 波形 {
  func 内積(_ other: Self) -> Double {
    guard サンプリングサイズ == other.サンプリングサイズ else {
      fatalError("サンプリングサイズが\(サンプリングサイズ)であるのに対し、引数の波形のサンプリングサイズが\(other.サンプリングサイズ)です")
    }
    return zip(測定値, other.測定値).reduce(0.0) { (sum, zipped) in
      let (a, b) = zipped
      return a * b + sum
    }
  }
}
