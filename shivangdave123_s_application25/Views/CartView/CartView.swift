import SwiftUI

struct CartView: View {
    @StateObject var cartViewModel = CartViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        HStack {
                            HStack {
                                Text(StringConstants.kLblYourCart)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 79.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                Spacer()
                                Image("img_notificationic_3")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 243.0))
                                    .onTapGesture {
                                        cartViewModel.nextScreen = "NotificationView"
                                    }
                            }
                            .frame(width: getRelativeWidth(size: 346.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 13.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        ProductdetailsCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(size: 343.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 24.0))
                        .padding(.horizontal, getRelativeWidth(size: 15.0))
                        HStack {
                            HStack {
                                TextField(StringConstants.kMsgEnterCuponCod, text: $cartViewModel.entercuponcodText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 256.0), height: getRelativeHeight(size: 56.0), alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            Button(action: {}, label: {
                                Text(StringConstants.kLblApply)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(size: 87.0), height: getRelativeHeight(size: 56.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(size: 87.0), height: getRelativeHeight(size: 56.0), alignment: .center)
                            .background(RoundedCorners(topRight: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                            .padding(.trailing, getRelativeWidth(size: 16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 52.0))
                        VStack {
                            HStack {
                                Text(StringConstants.kLblItems3)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl59886)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(size: 51.0), height: getRelativeHeight(size: 22.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(size: 200.0))
                            }
                            .frame(width: getRelativeWidth(size: 310.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                Text(StringConstants.kLblShipping)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 57.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl4000)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(size: 43.0), height: getRelativeHeight(size: 22.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(size: 210.0))
                            }
                            .frame(width: getRelativeWidth(size: 310.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                Text(StringConstants.kLblImportCharges)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 100.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl12800)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(size: 47.0), height: getRelativeHeight(size: 22.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(size: 163.0))
                            }
                            .frame(width: getRelativeWidth(size: 310.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Divider()
                                .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                                .background(ColorConstants.Blue50)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                Text(StringConstants.kLblTotalPrice)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLbl76686)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.LightBlueA200)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(size: 52.0), height: getRelativeHeight(size: 18.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(size: 188.0))
                            }
                            .frame(width: getRelativeWidth(size: 310.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                            .padding(.vertical, getRelativeHeight(size: 11.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 164.0), alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 15.0))
                        Button(action: {
                            cartViewModel.nextScreen = "ShipToView"
                        }, label: {
                            Text(StringConstants.kLblCheckOut)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 633.0), alignment: .leading)
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
                                    Image("img_carticon_2")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(size: 26.0))
                                    Text(StringConstants.kLblCart)
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
                                    Image("img_usericon_3")
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
                                   selection: $cartViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShipToView(),
                                   tag: "ShipToView",
                                   selection: $cartViewModel.nextScreen,
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

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
