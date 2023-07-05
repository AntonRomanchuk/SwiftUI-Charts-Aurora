import SwiftUI
import Charts

struct CustomBarMarkChart: View {
    var body: some View {
        Chart {
            BarMark(
                x: .value("Month", "Июнь/23"),
                y: .value("Value", 16)
            )
            BarMark(
                x: .value("Month", "Июль/23"),
                y: .value("Value", 10)
            )
            BarMark(
                x: .value("Month", "Август/23"),
                y: .value("Value", 9)
            )
        }
        .chartYAxis {
            AxisMarks(
                    values: [0, 15, 30]
                ) {
                    AxisValueLabel(format: Decimal.FormatStyle.Percent.percent.scale(1))
                }

                AxisMarks(
                    values: [0, 10, 20, 30]
                ) {
                    AxisGridLine()
                }
        }
        .chartYScale(domain: [0, 30])
        .chartXScale(domain: ["Июнь/23",
                              "Июль/23",
                              "Август/23",
                              "Сентябрь/23"])
        .chartPlotStyle { plotArea in
              plotArea.background(.pink.opacity(0.3))
        }
        .frame(height: 250)
    }
}

struct CustomBarMarkChart_Previews: PreviewProvider {
    static var previews: some View {
        CustomBarMarkChart()
    }
}
