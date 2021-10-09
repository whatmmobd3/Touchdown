import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
            .padding(15)
            .background(Color(
                red: shop.selectedProdct?.red ?? sampleProduct.red,
                green: shop.selectedProdct?.green ?? sampleProduct.green,
                blue: shop.selectedProdct?.blue ?? sampleProduct.blue))
            .clipShape(Capsule())
        
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
