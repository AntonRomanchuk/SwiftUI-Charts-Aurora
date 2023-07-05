import SwiftUI
import Charts

struct CustomPointMarkChart: View {
    var body: some View {
        Chart {
            PointMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 176)
            )
            .symbol {
                Image(systemName: "apple.logo")
                    .foregroundColor(.green)
            }
            PointMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 168)
            )
            .symbol {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
            }
            PointMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 100)
            )
            .symbol {
                customSymbol
            }
        }
        .chartPlotStyle{ plotArea in
              plotArea.background(.pink.opacity(0.3))
        }
        .frame(height: 250)
    }

    private var customSymbol: some View {
        Text("12")
            .font(.system(size: 12))
            .foregroundColor(.white)
            .frame(width: 28, height: 28, alignment: .center)
            .background(Color.purple)
            .clipShape(Circle())
            .padding([.leading, .bottom])
    }
}

struct CustomPointMarkChart_Previews: PreviewProvider {
    static var previews: some View {
        CustomPointMarkChart()
    }
}
