import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players) {
                player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("Iphone")
            .background(Color.gray)
    }
}
