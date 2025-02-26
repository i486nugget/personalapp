import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0 // blog is the default tab

    init() {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            windowScene.windows.first?.overrideUserInterfaceStyle = .dark // force dark mode
        }
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.black.withAlphaComponent(0.5) // 50% transparent background
        appearance.backgroundEffect = UIBlurEffect(style: .dark) // add blur effect
        UITabBar.appearance().standardAppearance = appearance
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }

    var body: some View {
        ZStack {
            // Dark gradient mesh background
            LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.3), Color.blue.opacity(0.3)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $selectedTab) {
                BlogView()
                    .tabItem {
                        Image(systemName: "bookmark")
                            .imageScale(.small)
                        Text("blog")
                    }
                    .tag(0) // default tab

                ProjectsView()
                    .tabItem {
                        Image(systemName: "iphone.app.switcher")
                            .imageScale(.small)
                        Text("projects")
                    }
                    .tag(1)

                SocialsView()
                    .tabItem {
                        Image(systemName: "line.3.horizontal.circle")
                            .imageScale(.small)
                        Text("socials")
                    }
                    .tag(2)

                AboutView()
                    .tabItem {
                        Image(systemName: "info.circle")
                            .imageScale(.small)
                        Text("about")
                    }
                    .tag(3)
            }
            .accentColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
