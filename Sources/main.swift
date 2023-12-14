import Foundation

let sin波形 = 波形(測定値: (0 ..< 360).map { t in
  sin(Double(t) * Double.pi / 180)
})
let cos波形 = 波形(測定値: (0 ..< 360).map { t in
  cos(Double(t) * Double.pi / 180)
})

print("τ, 相互関数")
for (i, 値) in sin波形.相互相関(cos波形).enumerated() {
  print("\(-360 + i), \(値)")
}
