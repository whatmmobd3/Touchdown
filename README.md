# Touchdown

without Notch 
NavigationBarView.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

Optinal
sampleProduct: Product = products[0]
var selectedProduct: Product?

Text(sampleProduct.name)
Text(shop.selectedProduct?.name ?? sampleProduct.name)
#most important
