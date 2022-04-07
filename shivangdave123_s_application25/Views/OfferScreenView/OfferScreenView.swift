import SwiftUI

struct OfferScreenView: View {
    @StateObject var offerScreenViewModel = OfferScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            HStack {
                                Image("img_lefticon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kMsgSuperFlashSal2)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 142.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 178.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            Spacer()
                            Image("img_searchicon_1")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(size: 141.0))
                                .onTapGesture {
                                    offerScreenViewModel.nextScreen = "SearchView"
                                }
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ZStack(alignment: .leading) {
                                Image("img_promotionimage")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgSuperFlashSal)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 209.0), height: getRelativeHeight(size: 72.0), alignment: .topLeading)
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl08)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(size: 4.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                            .padding(.vertical, getRelativeHeight(size: 10.0))
                                            .padding(.leading, getRelativeWidth(size: 4.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl34)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 4.0))
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(size: 4.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                            .padding(.vertical, getRelativeHeight(size: 10.0))
                                            .padding(.leading, getRelativeWidth(size: 4.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl52)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 4.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(size: 150.0), height: getRelativeHeight(size: 41.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 29.0))
                                    .padding(.trailing, getRelativeWidth(size: 10.0))
                                }
                                .frame(width: getRelativeWidth(size: 209.0), height: getRelativeHeight(size: 142.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(size: 24.0))
                                .padding(.trailing, getRelativeWidth(size: 110.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .center)
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 13.0) {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Product4Cell()
                                                .onTapGesture {
                                                    offerScreenViewModel.nextScreen = "ProductDetailView"
                                                }
                                        }
                                    }
                                }
                            }
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            .fixedSize(horizontal: false, vertical: false)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                    .padding(.top, getRelativeHeight(size: 44.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $offerScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $offerScreenViewModel.nextScreen,
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

struct OfferScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreenView()
    }
}
