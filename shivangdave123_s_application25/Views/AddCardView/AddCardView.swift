import SwiftUI

struct AddCardView: View {
    @StateObject var addCardViewModel = AddCardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            HStack {
                                HStack {
                                    Image("img_lefticon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblAddCard)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 82.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                }
                                .frame(width: getRelativeWidth(size: 118.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 241.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                            Text(StringConstants.kLblCardNumber)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 103.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 44.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterCardNumb, text: $addCardViewModel.entercardnumbText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblExpirationDate)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 243.15), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kLblExpirationDate, text: $addCardViewModel.expirationdateText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 340.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblSecurityCode)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 220.48), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 29.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kLblSecurityCode, text: $addCardViewModel.securitycodeText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 340.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
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
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterCardNumb, text: $addCardViewModel.entercardnumbText1)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Button(action: {
                                addCardViewModel.nextScreen = "CreditCardAndDebitView"
                            }, label: {
                                Text(StringConstants.kLblAddCard)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                            .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(size: 166.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 692.0), alignment: .leading)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: CreditCardAndDebitView(),
                                   tag: "CreditCardAndDebitView",
                                   selection: $addCardViewModel.nextScreen,
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

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
