import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            VStack{
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProdct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })
                QuantityFavouriteDetail()
                    .padding(.vertical, 10)
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            }
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -115))
            
        }
        .zIndex(0.0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: shop.selectedProdct?.red ?? sampleProduct.red,
            green: shop.selectedProdct?.green ?? sampleProduct.green,
            blue: shop.selectedProdct?.blue ?? sampleProduct.blue
        ).ignoresSafeArea(.all, edges: .all)
        )
        
        
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
