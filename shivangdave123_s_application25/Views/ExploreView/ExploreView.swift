import SwiftUI

struct ExploreView: View {
    @StateObject var exploreViewModel = ExploreViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                HStack {
                                    Spacer()
                                    Image("img_searchicon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 16.0), height: getRelativeHeight(size: 16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    TextField(StringConstants.kLblSearchProduct, text: $exploreViewModel.searchproductText)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(size: 263.0), height: getRelativeHeight(size: 46.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                Spacer()
                                Image("img_loveicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(size: 11.0))
                                    .padding(.leading, getRelativeWidth(size: 16.0))
                                Spacer()
                                ZStack(alignment: .topTrailing) {
                                    Image("img_notificationic_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            exploreViewModel.nextScreen = "NotificationView"
                                        }
                                    Image("img_notificationin")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 8.0), height: getRelativeHeight(size: 8.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(size: 16.0))
                                        .padding(.leading, getRelativeWidth(size: 14.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(size: 11.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 46.0), alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 46.0), alignment: .leading)
                        Text(StringConstants.kLblManFashion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 97.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                            .padding(.top, getRelativeHeight(size: 32.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(), SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 21.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        ManShirtCell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        .fixedSize(horizontal: false, vertical: false)
                        Text(StringConstants.kLblWomanFashion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 124.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                            .padding(.top, getRelativeHeight(size: 24.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(), SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 21.0) {
                                    ForEach(0 ... 6, id: \.self) { index in
                                        DressCell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 632.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 16.0))
                    ZStack {
                        HStack {
                            Group {
                                Spacer()
                                VStack {
                                    Image("img_homeicon_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblHome)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 4.0))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 43.0), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_searchicon_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblExplore)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 4.0))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 43.0), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_carticon_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblCart)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 4.0))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 43.0), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_offericon_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblOffer)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 4.0))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 43.0), alignment: .center)
                            }
                            Group {
                                Spacer()
                                VStack {
                                    Image("img_usericon_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblAccount)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 4.0))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 43.0), alignment: .center)
                                Spacer()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 43.0), alignment: .leading)
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 93.0), alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $exploreViewModel.nextScreen,
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

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
