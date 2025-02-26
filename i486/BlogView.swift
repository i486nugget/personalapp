import SwiftUI

struct BlogView: View {
    let blogPosts: [(title: String, date: String, body: String)] = [
        (
            title: "my first post",
            date: "26 feb 2025",
            body: """
Hello world! i486nugget here. I made this app myself in case you wanna track my progress and stuff.

I make music and stuff but that should be obvious if you look at the "other" tab here.

anyways not much else so goodbye for now. This app is work in progress
"""
        )]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(blogPosts, id: \.title) { post in
                    VStack(alignment: .leading, spacing: 5) { // ensures left alignment
                        Text(post.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .fixedSize(horizontal: false, vertical: true) // allows text wrapping
                        
                        Text(post.date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text(post.body)
                            .font(.body)
                            .fixedSize(horizontal: false, vertical: true) // makes sure long text wraps properly
                            .padding(.top, 5)
                    }
                    .padding(10) // inner padding for content
                    .frame(maxWidth: .infinity, alignment: .leading) // keeps everything left-aligned
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}
