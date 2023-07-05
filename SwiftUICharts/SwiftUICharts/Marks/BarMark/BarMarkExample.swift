import SwiftUI
import Charts

struct BarMarkExample: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            BarMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 3)
            )
            BarMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .frame(height: 250)
    }
}

struct BarMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        BarMarkExample()
    }
}
