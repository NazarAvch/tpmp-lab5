func solveQuadratic(a: Double, b: Double, c: Double) {
    let D = b * b - 4 * a * c
    if D > 0 {
        let x1 = (-b + sqrt(D)) / (2 * a)
        let x2 = (-b - sqrt(D)) / (2 * a)
        print("Два корня: \(x1) и \(x2)")
    } else if D == 0 {
        let x = -b / (2 * a)
        print("Один корень: \(x)")
    } else {
        print("Нет действительных корней")
    }
}
solveQuadratic(a: 1, b: -3, c: 2)  // пример