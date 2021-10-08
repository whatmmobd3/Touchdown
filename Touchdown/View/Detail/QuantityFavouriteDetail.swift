import SwiftUI

struct QuantityFavouriteDetail: View {
    @State private var counter : Int = 0
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {
                if counter > 0{
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {}, label: {
                Image(systemName: "plus")
            })
            Spacer()
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "heart.circle")
            })
                .foregroundColor(.pink)
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetail_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetail()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
