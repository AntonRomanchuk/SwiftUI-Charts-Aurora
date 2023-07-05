import SwiftUI
import Charts

struct RuleMarkExample: View {
    var body: some View {
        Chart {
            RuleMark(
                xStart: .value("Start", 1),
                xEnd: .value("End", 12),
                y: .value("Value", 2.5)
            )
            RuleMark(
                xStart: .value("Start", 9),
                xEnd: .value("End", 16),
                y: .value("Value", 1.5)
            )
            RuleMark(
                xStart: .value("Start", 3),
                xEnd: .value("End", 10),
                y: .value("Value", 0.5)
            )
        }
        .frame(height: 250)
    }
}

struct RuleMarkExample_Previews: PreviewProvider {
    static var previews: some View {
        RuleMarkExample()
    }
}
