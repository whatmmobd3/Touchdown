import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing:0){
                        FeaturedTabView()
                            .frame(width: 10000, height: 200)
                            .padding(.vertical, 20)
                        CategoryGridView()
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products){
                                e in
                                ProductItemView(product: e)
                            }
                        })
                            .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
      
                    }
                    .frame(width: 400)
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
