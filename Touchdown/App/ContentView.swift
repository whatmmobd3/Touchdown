
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //wtih notch
            VStack{
                NavigationBarView()
                    .padding(.horizontal, 10)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                Spacer()
                FooterView()
                    .padding(.horizontal)
                }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Iphone 12")
    }
}
