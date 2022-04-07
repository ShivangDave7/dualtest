import SwiftUI

struct LailyfaFebrinaCardView: View {
    @StateObject var lailyfaFebrinaCardViewModel = LailyfaFebrinaCardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_lefticon_3")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 26.6), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgLailyfaFebrina)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 175.0), height: getRelativeHeight(size: 26.6), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 211.0), height: getRelativeHeight(size: 26.6), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 16.0))
                        .padding(.trailing, getRelativeWidth(size: 148.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 26.6), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                VStack(alignment: .leading, spacing: 0) {
                                    Image("img_creditcardlog")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 36.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(size: 24.0))
                                        .padding(.horizontal, getRelativeWidth(size: 24.0))
                                    Text(StringConstants.kMsg63269124)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 301.0), height: getRelativeHeight(size: 36.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(size: 31.0))
                                        .padding(.horizontal, getRelativeWidth(size: 21.0))
                                    HStack {
                                        Text(StringConstants.kLblCardHolder)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.WhiteA70087)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 73.0), height: getRelativeHeight(size: 15.0), alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(size: 21.0))
                                            .opacity(0.5)
                                        Spacer()
                                        Text(StringConstants.kLblCardSave)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.WhiteA70087)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 15.0), alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(size: 37.0))
                                            .padding(.trailing, getRelativeWidth(size: 153.0))
                                            .opacity(0.5)
                                    }
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 17.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 17.0))
                                    HStack {
                                        Text(StringConstants.kLblLailyfaFebrina)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(size: 83.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                            .padding(.leading, getRelativeWidth(size: 21.0))
                                        Spacer()
                                        Text(StringConstants.kLbl0624)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(size: 32.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                            .padding(.leading, getRelativeWidth(size: 32.0))
                                            .padding(.trailing, getRelativeWidth(size: 175.0))
                                    }
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 17.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(size: 2.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 190.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                Text(StringConstants.kLblCardNumber)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 103.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 18.0))
                                HStack {
                                    TextField(StringConstants.kMsg123123123, text: $lailyfaFebrinaCardViewModel._123123123Text)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.leading, getRelativeWidth(size: 18.0))
                                .padding(.trailing, getRelativeWidth(size: 14.0))
                                Text(StringConstants.kLblExpirationDate)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 245.3), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 18.0))
                                HStack {
                                    TextField(StringConstants.kLbl1212, text: $lailyfaFebrinaCardViewModel._1212Text)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.leading, getRelativeWidth(size: 18.0))
                                .padding(.trailing, getRelativeWidth(size: 14.0))
                                Text(StringConstants.kLblSecurityCode)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 223.73), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 29.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack {
                                    TextField(StringConstants.kLbl1219, text: $lailyfaFebrinaCardViewModel._1219Text)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(size: 345.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                Text(StringConstants.kLblCardHolder2)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 92.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 18.0))
                            }
                            Group {
                                HStack {
                                    TextField(StringConstants.kLblLailyfaFebrina, text: $lailyfaFebrinaCardViewModel.lailyfafebrinaText)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.leading, getRelativeWidth(size: 18.0))
                                .padding(.trailing, getRelativeWidth(size: 14.0))
                                Button(action: {
                                    lailyfaFebrinaCardViewModel.nextScreen = "CreditCardAndDebitView"
                                }, label: {
                                    Text(StringConstants.kLblSave)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                })
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                                .padding(.top, getRelativeHeight(size: 40.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                    .padding(.top, getRelativeHeight(size: 33.81))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: CreditCardAndDebitView(),
                                   tag: "CreditCardAndDebitView",
                                   selection: $lailyfaFebrinaCardViewModel.nextScreen,
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

struct LailyfaFebrinaCardView_Previews: PreviewProvider {
    static var previews: some View {
        LailyfaFebrinaCardView()
    }
}
