import SwiftUI

struct FavoriteProductView: View {
    @StateObject var favoriteProductViewModel = FavoriteProductViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_lefticon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgFavoriteProduc)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 144.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 180.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 179.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 13.0) {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Product5Cell()
                                            .onTapGesture {
                                                favoriteProductViewModel.nextScreen = "ProductDetailView"
                                            }
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(size: 24.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 624.0), alignment: .leading)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $favoriteProductViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct FavoriteProductView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteProductView()
    }
}
