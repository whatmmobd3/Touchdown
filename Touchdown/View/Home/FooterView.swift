import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market market market.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            
            Text("Coryright @ David Nguyen \nAll right reserved")
                .foregroundColor(.gray)
                .font(.footnote)
                .multilineTextAlignment(.center)
            
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
        
    }
}
