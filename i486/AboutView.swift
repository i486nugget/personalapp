import SwiftUI

struct AboutView: View {
    let aboutText = """
    my name is i486nugget, i am a uk-based app developer and sort of a musician. i don't care about capital letters here because it's a personal app so i can be as unprofessional as i like :3
    """

    let appText = """
    this is my personal open source app about me, where i post updates myself and all. expect an update here and then.
    """

    var body: some View {
        VStack {
            // First Section - About Me
            VStack(alignment: .leading, spacing: 10) {
                Text("about me")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(aboutText)
                    .font(.body)
                    .padding(5) // padding inside for readability
                    .fixedSize(horizontal: false, vertical: true) // supports multiline text
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading) // left-aligned

            Divider() // Adds a separator between the two sections

            // Second Section - About the App
            VStack(alignment: .leading, spacing: 10) {
                Text("about this app")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(appText)
                    .font(.body)
                    .padding(5) // padding inside for readability
                    .fixedSize(horizontal: false, vertical: true) // supports multiline text
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading) // left-aligned
        }
        .background(Color.clear) // no background to fit with the dark gradient
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
