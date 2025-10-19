/**

 * __Homework 11__
 * Jim Mittler
 * 18 October 2025


 This homework asked us to put together a basic tab view with some navigation.

 I chose three types of candy for my Halloween theme.

Not too much going on there - we have three candy images and depending on the tab you pick you get that image.

 _Italic text_
 __Bold text__
 ~~Strikethrough text~~

 */
import SwiftUI

// so we can reuse the code/logic for all three tables, we've got a
// little data structure here for the tab
private struct TabInfo: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let systemImage: String
    let assetName: String
}

// here's our main content view

struct ContentView: View {

    // initialize the three tabs with the icon, image and name
    private let tabs: [TabInfo] = [
        .init(
            title: "Chocolate",
            systemImage: "square.grid.3x3",
            assetName: "chocolate_icon"
        ),
        .init(title: "Hard", systemImage: "cube.fill", assetName: "hard"),
        .init(
            title: "Chewy",
            systemImage: "capsule.fill",
            assetName: "mikenike"
        ),
    ]

    // for our display we show each tab
    // loop through our array since it's the same logic
    // for each tab
    var body: some View {
        TabView {
            ForEach(tabs) { tab in
                ZStack {
                    Image(tab.assetName)
                        .resizable()
                        .scaledToFill()  // fills while preserving aspect ratio (may crop)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .clipped()
                }
                .ignoresSafeArea()  // truly edge-to-edge
                .tabItem {
                    Label(tab.title, systemImage: tab.systemImage)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
