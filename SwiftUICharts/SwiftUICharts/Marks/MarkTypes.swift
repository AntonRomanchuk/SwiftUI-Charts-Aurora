import SwiftUI

struct MarkTypes: View {
    var body: some View {
        List {
            Section("Mark types") {
                ListElementView(title: "Bar Mark",
                                content: BarMarkExample())
                ListElementView(title: "Line Mark",
                                content: LineMarkExample())
                ListElementView(title: "Point Mark",
                                content: PointMarkExample())
                ListElementView(title: "Rectangle Mark",
                                content: RectangleMarkExample())
                ListElementView(title: "Area Mark",
                                content: AreaMarkExample())
                ListElementView(title: "Rule Mark",
                                content: RuleMarkExample())
            }
        }
    }
}

extension MarkTypes {
    struct ListElementView<Content: View>: View {
        let title: String
        let content: Content

        init(
            title: String,
            content: Content
        ) {
            self.title = title
            self.content = content
        }

        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                content
            }
        }
    }
}

struct MarkTypes_Previews: PreviewProvider {
    static var previews: some View {
        MarkTypes()
    }
}
