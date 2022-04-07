import SwiftUI

struct ProductDetailView: View {
    @StateObject var productDetailViewModel = ProductDetailViewModel()
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
                                Text(StringConstants.kMsgNikeAirMax272)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 193.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 229.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            Spacer()
                            HStack {
                                Image("img_searchicon_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        productDetailViewModel.nextScreen = "SearchView"
                                    }
                                Image("img_moreicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 16.0))
                            }
                            .frame(width: getRelativeWidth(size: 64.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .padding(.leading, getRelativeWidth(size: 50.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    FSPagerViewSUI($productDetailViewModel.group29CurrentPage, productDetailViewModel.sliderData) { item in
                                        Image("img_productimage_9")
                                            .resizable()
                                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 238.0), alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                    }
                                    PageIndicator(numPages: productDetailViewModel.sliderData.count, currentPage: $productDetailViewModel.group29CurrentPage, selectedColor: ColorConstants.LightBlueA200, unSelectedColor: ColorConstants.Blue50, spacing: 8.0)
                                    HStack {
                                        Text(StringConstants.kMsgNikeAirZoomP)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 20.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 275.0), height: getRelativeHeight(size: 60.0), alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Image("img_loveicon")
                                            .resizable()
                                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.vertical, getRelativeHeight(size: 2.0))
                                            .padding(.leading, getRelativeWidth(size: 44.0))
                                            .padding(.trailing, getRelativeWidth(size: 16.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 60.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 16.0))
                                    RatingBarView(selected: $productDetailViewModel.ratingbarRating, heightWeightImage: getRelativeWidth(size: 16.0))
                                        .frame(width: getRelativeWidth(size: 96.0), height: getRelativeHeight(size: 16.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(size: 8.0))
                                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                                    Text(StringConstants.kLbl29943)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 84.0), height: getRelativeHeight(size: 30.0), alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(size: 16.0))
                                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 408.0), alignment: .leading)
                                Text(StringConstants.kLblSelectSize)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack {
                                    Group {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl6)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0, bottomRight: 24.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0, bottomRight: 24.0).fill(ColorConstants.WhiteA700))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl65)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl7)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).stroke(ColorConstants.LightBlueA200, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl75)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                    }
                                    Group {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl8)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLbl85)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 66.0, topRight: 66.0, bottomLeft: 66.0, bottomRight: 66.0).fill(ColorConstants.WhiteA700))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                    }
                                }
                                .frame(width: getRelativeWidth(size: 368.0), height: getRelativeHeight(size: 48.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.leading, getRelativeWidth(size: 10.0))
                                Text(StringConstants.kLblSelectColor)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 92.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                Image("img_colors")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 359.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(size: 12.0))
                                    .padding(.leading, getRelativeWidth(size: 10.0))
                                Text(StringConstants.kLblSpecification)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 101.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack {
                                    Text(StringConstants.kLblShown)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 45.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(size: 44.0))
                                    Spacer()
                                    Text(StringConstants.kMsgLaserBlueAnth)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(size: 171.0), height: getRelativeHeight(size: 66.0), alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(size: 127.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 66.0), alignment: .center)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.horizontal, getRelativeWidth(size: 10.0))
                                HStack {
                                    Text(StringConstants.kLblStyle)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 34.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblCd0113400)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.trailing)
                                        .frame(width: getRelativeWidth(size: 171.0), height: getRelativeHeight(size: 22.0), alignment: .topTrailing)
                                        .padding(.leading, getRelativeWidth(size: 138.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                                .padding(.top, getRelativeHeight(size: 16.0))
                                .padding(.horizontal, getRelativeWidth(size: 10.0))
                            }
                            Group {
                                Text(StringConstants.kMsgTheNikeAirMa)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 88.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 16.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                VStack {
                                    HStack {
                                        Text(StringConstants.kLblReviewProduct)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                            .foregroundColor(ColorConstants.Indigo900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 118.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Text(StringConstants.kLblSeeMore)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                            .foregroundColor(ColorConstants.LightBlueA200)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.trailing)
                                            .frame(width: getRelativeWidth(size: 69.0), height: getRelativeHeight(size: 21.0), alignment: .topTrailing)
                                            .padding(.leading, getRelativeWidth(size: 156.0))
                                            .padding(.trailing, getRelativeWidth(size: 16.0))
                                            .onTapGesture {
                                                productDetailViewModel.nextScreen = "ReviewProductView"
                                            }
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 21.0), alignment: .leading)
                                    HStack {
                                        RatingBarView(selected: $productDetailViewModel.ratingbarRating1, heightWeightImage: getRelativeWidth(size: 16.0))
                                            .frame(width: getRelativeWidth(size: 96.0), height: getRelativeHeight(size: 16.0), alignment: .center)
                                        Text(StringConstants.kLbl45)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.Bluegray300)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 18.0), height: getRelativeHeight(size: 15.0), alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(size: 8.0))
                                        Text(StringConstants.kLbl5Review)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.Bluegray300)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 58.0), height: getRelativeHeight(size: 15.0), alignment: .topLeading)
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(size: 183.0), height: getRelativeHeight(size: 16.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                    HStack {
                                        Image("img_profilepicture")
                                            .resizable()
                                            .frame(width: getRelativeWidth(size: 48.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                            .scaledToFit()
                                            .clipShape(Circle())
                                            .padding(.leading, getRelativeWidth(size: 16.0))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kLblJamesLawson)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                                .foregroundColor(ColorConstants.Indigo900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                            RatingBarView(selected: $productDetailViewModel.ratingbarRating2, heightWeightImage: getRelativeWidth(size: 16.0))
                                                .frame(width: getRelativeWidth(size: 96.0), height: getRelativeHeight(size: 16.0), alignment: .leading)
                                                .padding(.top, getRelativeHeight(size: 4.0))
                                                .padding(.trailing, getRelativeWidth(size: 10.0))
                                        }
                                        .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 41.0), alignment: .center)
                                        .padding(.bottom, getRelativeHeight(size: 4.0))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        .padding(.trailing, getRelativeWidth(size: 183.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 16.0))
                                    Text(StringConstants.kMsgAirMaxAreAlw)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 110.0), alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(size: 16.0))
                                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                                    HStack {
                                        Image("img_productpicture")
                                            .resizable()
                                            .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Image("img_productpicture_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(size: 12.0))
                                        Image("img_productpicture_2")
                                            .resizable()
                                            .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(size: 12.0))
                                        Spacer()
                                    }
                                    .frame(width: getRelativeWidth(size: 240.0), height: getRelativeHeight(size: 72.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 16.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                    Text(StringConstants.kMsgDecember1020)
                                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 15.0), alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(size: 16.0))
                                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 354.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                Text(StringConstants.kMsgYouMightAlso)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 139.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 23.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack(spacing: 0) {
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        LazyHStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                Product6Cell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                Button(action: {
                                    productDetailViewModel.nextScreen = "CartView"
                                }, label: {
                                    Text(StringConstants.kLblAddToCart)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                })
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                                .padding(.top, getRelativeHeight(size: 21.0))
                                .padding(.horizontal, getRelativeWidth(size: 10.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $productDetailViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ReviewProductView(),
                                   tag: "ReviewProductView",
                                   selection: $productDetailViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CartView(),
                                   tag: "CartView",
                                   selection: $productDetailViewModel.nextScreen,
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

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
