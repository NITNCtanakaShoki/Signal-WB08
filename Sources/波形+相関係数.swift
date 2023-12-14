import Foundation

extension 波形 {
  func 相関係数(_ other: Self) -> Double {
    内積(other) / (ノルム * other.ノルム)
  }
}
