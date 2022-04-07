import SwiftUI

struct AccountView: View {
    @StateObject var accountViewModel = AccountViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Text(StringConstants.kLblAccount)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                Spacer()
                                Image("img_notificationic_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 252.0))
                                    .onTapGesture {
                                        accountViewModel.nextScreen = "NotificationView"
                                    }
                            }
                            .frame(width: getRelativeWidth(size: 346.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 13.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        HStack {
                            Image("img_usericon_4")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblProfile)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 43.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 276.0))
                        }
                        .onTapGesture {
                            accountViewModel.nextScreen = "ProfileView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(size: 28.0))
                        HStack {
                            Image("img_bagicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblOrder)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 38.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 281.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.Blue50)
                        HStack {
                            Image("img_locationicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 55.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 264.0))
                        }
                        .onTapGesture {}
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        HStack {
                            Image("img_creditcardico")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblPayment)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 60.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 259.0))
                        }
                        .onTapGesture {
                            accountViewModel.nextScreen = "AddPaymentView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 276.0), alignment: .leading)
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
                                    Image("img_usericon_5")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblAccount)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.LightBlueA200)
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
                    NavigationLink(destination: AddPaymentView(),
                                   tag: "AddPaymentView",
                                   selection: $accountViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $accountViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $accountViewModel.nextScreen,
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

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
