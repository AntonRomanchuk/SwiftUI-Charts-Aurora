import SwiftUI
import Charts

struct RectangleMarkExample: View {
    var body: some View {
        Chart {
            RectangleMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            RectangleMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 3)
            )
            RectangleMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .frame(height: 250)
    }
}

struct RectangleMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        RectangleMarkExample()
    }
}
