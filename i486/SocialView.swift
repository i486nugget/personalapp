import SwiftUI

struct SocialsView: View {
    let links = [
        ("youtube", "here is where i post my original songs, please don't get mad that they get very repetitive or trash, i'm new to music", "https://www.youtube.com/@i486nugget"),
        ("twitch", "yeah i live stream here very rarely, join if you want though :3", "https://www.twitch.tv/i486nugget"),
        ("github", "all my trash open source nonsense. the repos in the projects tab are handpicked decent ones, here's the rest :p", "https://github.com/i486nugget")
    ]
    
    var body: some View {
        VStack {
            Spacer().frame(height: 0) // no giant spacer

            VStack(spacing: 20) {
                ForEach(links, id: \.0) { link in
                    VStack(alignment: .leading) {
                        Text(link.0)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(link.1)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            if let url = URL(string: link.2) {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("visit")
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

struct SocialsView_Previews: PreviewProvider {
    static var previews: some View {
        SocialsView()
    }
}
