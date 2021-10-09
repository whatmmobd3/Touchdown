import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProdct == nil {
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
                                    product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.showingProduct = false
                                                shop.selectedProdct = product
                                            }
                                        }
                                }
                            })
                                .padding(15)
                            
                            TitleView(title: "Helmets")
                            BrandGirdView()
                            FooterView()
                                .padding(.horizontal)
                            
                        }
                        .frame(width: 400)
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Iphone 12")
            .environmentObject(Shop())
    }
}
