import SwiftUI
import Charts

struct DataBarMarkChart: View {
    var body: some View {
        VStack {
            monthHoursChart
            shapesChart
        }
        .padding()
    }

    private var monthHoursChart: some View {
        Chart {
            ForEach(DataBarMarkChart.monthHoursArray) {
                let hoursValue = $0.hours
                BarMark(
                    x: .value("Month", $0.month),
                    y: .value("Value", hoursValue)
                )
                .annotation {
                    Text("\(hoursValue)")
                }
            }
        }
        .frame(height: 250)
    }

    private var shapesChart: some View {
        Chart(DataBarMarkChart.shapes) {
            BarMark(
                x: .value("Shape Type", $0.type),
                y: .value("Total Count", $0.count)
            )
            .foregroundStyle(by: .value("Shape Color", $0.color))
        }
        .chartForegroundStyleScale([
            "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
        ])
        .frame(height: 250)
    }
}

// MARK: - Data

extension DataBarMarkChart {
    struct Shape: Identifiable {
        var color: String
        var type: String
        var count: Double
        var id = UUID()
    }

    static let shapes: [Shape] = [
        .init(color: "Green", type: "Cube", count: 2),
        .init(color: "Green", type: "Sphere", count: 0),
        .init(color: "Green", type: "Pyramid", count: 1),
        .init(color: "Purple", type: "Cube", count: 1),
        .init(color: "Purple", type: "Sphere", count: 1),
        .init(color: "Purple", type: "Pyramid", count: 1),
        .init(color: "Pink", type: "Cube", count: 1),
        .init(color: "Pink", type: "Sphere", count: 2),
        .init(color: "Pink", type: "Pyramid", count: 0),
        .init(color: "Yellow", type: "Cube", count: 1),
        .init(color: "Yellow", type: "Sphere", count: 1),
        .init(color: "Yellow", type: "Pyramid", count: 2)
    ]

    struct MonthHours: Identifiable {
        let month: String
        let hours: Int
        let id: UUID = .init()
    }

    static let monthHoursArray: [MonthHours] = [
        .init(month: "Июнь/23", hours: 16),
        .init(month: "Июль/23", hours: 6),
        .init(month: "Август/23", hours: 9)
    ]
}

struct DataBarMarkChart_Previews: PreviewProvider {
    static var previews: some View {
        DataBarMarkChart()
    }
}
