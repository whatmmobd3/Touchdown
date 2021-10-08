import SwiftUI

struct BrandGirdView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
                ForEach(brands){
                    e in
                    BrandItemView(brand: e)
                }
            })
                .frame(height: 200)
                .padding(15)
        })
    }
}

struct BrandGirdView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGirdView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
