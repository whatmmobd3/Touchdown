
import SwiftUI
//test

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 10)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing:0){
                        FeaturedTabView()
                            .frame(width: 450, height: 200)
                            .padding(.vertical, 20)
                        FooterView()
                            .padding(.horizontal)
      
                    }
                })

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
