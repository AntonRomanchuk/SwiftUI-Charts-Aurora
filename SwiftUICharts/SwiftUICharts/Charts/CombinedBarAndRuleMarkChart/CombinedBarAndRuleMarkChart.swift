import SwiftUI
import Charts

struct CombinedBarAndRuleMarkChart: View {
    private let data: [Profit] = [
        Profit(department: "Production", profit: 15000),
        Profit(department: "Marketing", profit: 8000),
        Profit(department: "Finance", profit: 10000)
    ]

    private var average: Double {
        let totalProfit = data.map { $0.profit }.reduce(0.0, +)
        return totalProfit / Double(data.count)
    }

    var body: some View {
        Chart(data) {
            BarMark(
               x: .value("Department", $0.department),
               y: .value("Profit", $0.profit)
            )
            .foregroundStyle(by: .value("Department", $0.department))
            .opacity(0.3)
            RuleMark(
                y: .value("Average", average)
            )
            .lineStyle(StrokeStyle(lineWidth: 3))
            .annotation(position: .top, alignment: .trailing){
                Text("Average \(average, format: .number)")
            }
        }
        .frame(height: 250)
    }
}

// MARK: - Data

extension CombinedBarAndRuleMarkChart {
    struct Profit: Identifiable {
         let department: String
         let profit: Double
         var id: String { department }
    }
}

struct CombinedBarAndRuleMarkChart_Previews: PreviewProvider {
    static var previews: some View {
        CombinedBarAndRuleMarkChart()
    }
}
