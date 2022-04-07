import SwiftUI

struct OfferScreen1View: View {
    @StateObject var offerScreen1ViewModel = OfferScreen1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Text(StringConstants.kLblOffer)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 42.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                Spacer()
                                Image("img_notificationic_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 280.0))
                                    .onTapGesture {
                                        offerScreen1ViewModel.nextScreen = "NotificationView"
                                    }
                            }
                            .frame(width: getRelativeWidth(size: 346.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 13.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        Text(StringConstants.kMsgUseMegslCup)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 80.0), alignment: .topLeading)
                            .background(ColorConstants.LightBlueA200)
                            .padding(.top, getRelativeHeight(size: 44.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
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
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        ZStack(alignment: .center) {
                            Image("img_recomendedprod")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsg90OffSuperM)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 295.0), height: getRelativeHeight(size: 72.0), alignment: .topLeading)
                                Text(StringConstants.kMsgSpecialBirthda)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 295.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 16.0))
                            }
                            .frame(width: getRelativeWidth(size: 295.0), height: getRelativeHeight(size: 110.0), alignment: .center)
                            .padding(.bottom, getRelativeHeight(size: 64.0))
                            .padding(.horizontal, getRelativeWidth(size: 24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 206.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 592.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 26.0))
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
                                    Image("img_searchicon_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblExplore)
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
                                    Image("img_offericon_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblOffer)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
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
                                    Image("img_systemicon24p")
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
                                   selection: $offerScreen1ViewModel.nextScreen,
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

struct OfferScreen1View_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreen1View()
    }
}
