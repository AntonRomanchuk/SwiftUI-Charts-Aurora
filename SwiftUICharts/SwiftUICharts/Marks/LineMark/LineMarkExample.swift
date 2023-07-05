import SwiftUI
import Charts

struct LineMarkExample: View {
    var body: some View {
        Chart {
            LineMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            LineMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 3)
            )
            LineMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .frame(height: 250)
    }
}

struct LineMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        LineMarkExample()
    }
}
