import Foundation

struct 波形: ExpressibleByArrayLiteral {
  var 測定値: [Double]

  init(測定値: [Double]) {
    self.測定値 = 測定値
  }

  init(arrayLiteral elements: Double...) {
    self.init(測定値: elements)
  }

  var サンプリングサイズ: Int {
    return 測定値.count
  }
}
