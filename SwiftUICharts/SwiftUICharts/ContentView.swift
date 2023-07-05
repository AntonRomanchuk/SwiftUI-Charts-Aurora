import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            contentView
        }
    }

    private var contentView: some View {
        List {
            NavigationLink("Mark types", destination: MarkTypes())
            Section("Combined") {
                NavigationLink("Combined Bar and Rule Marks chart", destination: CombinedBarAndRuleMarkChart())
                NavigationLink("Combined Point and Line Marks chart", destination: CombinedPointAndLineMarksChart())
                NavigationLink("Combined Data chart", destination: CombinedDataChart())
            }
            Section("Custom") {
                NavigationLink("Custom Bar Mark chart", destination: CustomBarMarkChart())
                NavigationLink("Custom Point Mark chart", destination: CustomPointMarkChart())
            }
            Section("Data") {
                NavigationLink("Data Bar Mark chart", destination: DataBarMarkChart())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
