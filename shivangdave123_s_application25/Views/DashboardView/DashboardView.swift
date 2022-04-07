import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            HStack {
                                Image("img_searchicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 16.0), height: getRelativeHeight(size: 16.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblSearchProduct)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 99.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 8.0))
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "SearchView"
                                    }
                            }
                            .frame(width: getRelativeWidth(size: 123.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                            Spacer()
                            HStack {
                                Image("img_loveicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "FavoriteProductView"
                                    }
                                ZStack(alignment: .topTrailing) {
                                    Image("img_notificationic")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .onTapGesture {
                                            dashboardViewModel.nextScreen = "NotificationView"
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
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            }
                            .frame(width: getRelativeWidth(size: 64.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .padding(.leading, getRelativeWidth(size: 140.0))
                        }
                        .frame(width: getRelativeWidth(size: 327.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 32.0))
                        .padding(.trailing, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                FSPagerViewSUI($dashboardViewModel.group18CurrentPage, dashboardViewModel.sliderData) { item in
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
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .leading)
                                }
                                PageIndicator(numPages: dashboardViewModel.sliderData.count, currentPage: $dashboardViewModel.group18CurrentPage, selectedColor: ColorConstants.LightBlueA200, unSelectedColor: ColorConstants.Blue50, spacing: 8.0)
                                HStack {
                                    Text(StringConstants.kLblCategory)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                    Spacer()
                                    Text(StringConstants.kLblMoreCategory)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(size: 114.0), height: getRelativeHeight(size: 21.0), alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(size: 157.0))
                                        .padding(.trailing, getRelativeWidth(size: 16.0))
                                        .onTapGesture {
                                            dashboardViewModel.nextScreen = "ListCategoryView"
                                        }
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 21.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_manshirticon")
                                                .resizable()
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 70.0), alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblManShirt)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                                                .padding(.top, getRelativeHeight(size: 8.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 108.0), alignment: .center)
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_dressicon")
                                                .resizable()
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 70.0), alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblDress)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                                                .padding(.top, getRelativeHeight(size: 8.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 108.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_manworkequipm")
                                                .resizable()
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 70.0), alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kMsgManWorkEquipm)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                                                .padding(.top, getRelativeHeight(size: 8.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 108.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_womanbagicon")
                                                .resizable()
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 70.0), alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblWomanBag)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                                                .padding(.top, getRelativeHeight(size: 8.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 108.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Image("img_manshoesicon")
                                                .resizable()
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 70.0), alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Text(StringConstants.kLblManShoes)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                                                .padding(.top, getRelativeHeight(size: 8.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 108.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                    }
                                    .frame(width: getRelativeWidth(size: 359.0), height: getRelativeHeight(size: 108.0), alignment: .leading)
                                }
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                HStack {
                                    Text(StringConstants.kLblFlashSale)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 77.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblSeeMore)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(size: 69.0), height: getRelativeHeight(size: 21.0), alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(size: 197.0))
                                }
                                .onTapGesture {
                                    dashboardViewModel.nextScreen = "OfferScreenView"
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Product1Cell()
                                                    .onTapGesture {
                                                        dashboardViewModel.nextScreen = "ProductDetailView"
                                                    }
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                HStack {
                                    Text(StringConstants.kLblMegaSale)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 79.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblSeeMore)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(size: 69.0), height: getRelativeHeight(size: 21.0), alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(size: 195.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Product2Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                .padding(.top, getRelativeHeight(size: 12.0))
                            }
                            Group {
                                Image("img_recomendedprod")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(size: 29.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                ScrollView(.vertical, showsIndicators: false) {
                                    VStack {
                                        LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 13.0) {
                                            ForEach(0 ... 3, id: \.self) { index in
                                                Product3Cell()
                                            }
                                        }
                                    }
                                }
                                .padding(.top, getRelativeHeight(size: 16.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                .fixedSize(horizontal: false, vertical: false)
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 66.19), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 13.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                    ZStack {
                        HStack {
                            Group {
                                Spacer()
                                VStack {
                                    Image("img_homeicon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.74), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblHome)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 14.84), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(size: 3.95))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 42.53), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_exploreicon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.74), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblExplore)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 14.84), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(size: 3.95))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 42.53), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_carticon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.74), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblCart)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 14.84), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(size: 3.95))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 42.53), alignment: .center)
                                Spacer()
                                VStack {
                                    Image("img_offericon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.74), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblOffer)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 14.84), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(size: 3.95))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 42.53), alignment: .center)
                            }
                            Group {
                                Spacer()
                                VStack {
                                    Image("img_usericon_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.74), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblAccount)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 14.84), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(size: 3.95))
                                }
                                .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 42.53), alignment: .center)
                                Spacer()
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 42.53), alignment: .bottomLeading)
                        .padding(.top, getRelativeHeight(size: 23.66))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 66.0), alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FavoriteProductView(),
                                   tag: "FavoriteProductView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: OfferScreenView(),
                                   tag: "OfferScreenView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ListCategoryView(),
                                   tag: "ListCategoryView",
                                   selection: $dashboardViewModel.nextScreen,
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

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
