import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                .padding(10)
            }
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
        .cornerRadius(15)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text("$\(product.price)")
                .fontWeight(.bold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
