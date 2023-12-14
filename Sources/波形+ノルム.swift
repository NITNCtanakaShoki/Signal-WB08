import Foundation

extension 波形 {
  var ノルム: Double {
    sqrt(二乗和)
  }

  private var 二乗和: Double {
    測定値.reduce(0, +)
  }
}
