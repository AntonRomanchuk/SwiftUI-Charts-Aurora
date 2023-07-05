import SwiftUI
import Charts

struct CombinedPointAndLineMarksChart: View {
    private let data: [PriceHistory] = [
        PriceHistory(year: "2014", value: 5),
        PriceHistory(year: "2015", value: 4),
        PriceHistory(year: "2016", value: 7),
        PriceHistory(year: "2017", value: 15),
        PriceHistory(year: "2018", value: 14),
        PriceHistory(year: "2019", value: 27),
        PriceHistory(year: "2020", value: 27)
    ]

    var body: some View {
        Chart(data) {
            LineMark(
                x: .value("Year", $0.year),
                y: .value("Value", $0.value)
            )
            .interpolationMethod(.cardinal)
            PointMark(
                x: .value("Year", $0.year),
                y: .value("Value", $0.value)
            )
            BarMark(
                x: .value("Year", $0.year),
                y: .value("Value", $0.value)
            )
            .foregroundStyle(.orange.opacity(0.2))
        }
        .frame(height: 250)
    }
}


// MARK: - Data

extension CombinedPointAndLineMarksChart {
    struct PriceHistory: Identifiable {
        var id = UUID()
        var year: String
        var value: Double
    }
}

struct CombinedPointAndLineMarksChart_Previews: PreviewProvider {
    static var previews: some View {
        CombinedPointAndLineMarksChart()
    }
}
