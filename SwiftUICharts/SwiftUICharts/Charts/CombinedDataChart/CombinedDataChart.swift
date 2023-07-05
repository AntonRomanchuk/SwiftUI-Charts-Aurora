import SwiftUI
import Charts

struct CombinedDataChart: View {
    private let data: [PriceHistory] = [
        PriceHistory(year: "2015", value: 5, type: "A"),
        PriceHistory(year: "2016", value: 4, type: "A"),
        PriceHistory(year: "2017", value: 7, type: "A"),
        PriceHistory(year: "2018", value: 15, type: "A"),
        PriceHistory(year: "2019", value: 14, type: "A"),
        PriceHistory(year: "2020", value: 27, type: "A"),
        PriceHistory(year: "2021", value: 27, type: "A"),

        PriceHistory(year: "2015", value: 15, type: "B"),
        PriceHistory(year: "2016", value: 14, type: "B"),
        PriceHistory(year: "2017", value: 17, type: "B"),
        PriceHistory(year: "2018", value: 25, type: "B"),
        PriceHistory(year: "2019", value: 24, type: "B"),
        PriceHistory(year: "2020", value: 37, type: "B"),
        PriceHistory(year: "2021", value: 49, type: "B")
    ]


    var body: some View {
        Chart {
            ForEach(data) {
                AreaMark(
                    x: .value("Year", $0.year),
                    y: .value("Value", $0.value)
                )
                .foregroundStyle(by: .value("Type", "Price \($0.type)"))
            }
        }
        .frame(height: 250)
    }
}

// MARK: - Data

extension CombinedDataChart {
    struct PriceHistory: Identifiable {
        var id = UUID()
        var year: String
        var value: Double
        var type: String
    }
}


struct CombinedDataChart_Previews: PreviewProvider {
    static var previews: some View {
        CombinedDataChart()
    }
}
