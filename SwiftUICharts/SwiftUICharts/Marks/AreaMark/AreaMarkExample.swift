import SwiftUI
import Charts

struct AreaMarkExample: View {
    var body: some View {
        Chart {
            AreaMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            AreaMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 3)
            )
            AreaMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .frame(height: 250)
    }
}

struct AreaMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        AreaMarkExample()
    }
}
