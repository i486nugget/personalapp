import SwiftUI

struct ProjectsView: View {
    let projects = [
        ("skatepy", "py3d skateboarding game", "https://github.com/i486nugget/SkatePy"),
        ("song-repo", "all the songs i486nugget has made", "https://github.com/i486nugget/song-repo"),
        ("drift8", "scrapped C# metro version of drift", "https://github.com/i486nugget/Drift8"),
        ("notepad", "a recreation of windows notepad that's cross platform", "https://github.com/i486nugget/Notepad"),
        ("py3d", "basic 3d engine in python", "https://github.com/i486nugget/Py3D"),
        ("drift", "open source minimalist web browser", "https://github.com/MathERR02/Drift"),
        ("driftmac", "swift rewrite that probably won't be finished", "https://github.com/MathERR02/DriftMac")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(projects, id: \.0) { project in
                    VStack(alignment: .leading) {
                        Text(project.0)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(project.1)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            if let url = URL(string: project.2) {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("view on github")
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
            .padding()
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
