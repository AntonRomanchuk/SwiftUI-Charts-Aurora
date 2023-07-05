import SwiftUI
import Charts

struct PointMarkExample: View {
    var body: some View {
        Chart {
            PointMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            PointMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 3)
            )
            PointMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .frame(height: 250)
    }
}

struct PointMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        PointMarkExample()
    }
}
