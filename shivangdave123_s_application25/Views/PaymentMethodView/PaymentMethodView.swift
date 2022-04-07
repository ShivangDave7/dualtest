import SwiftUI

struct PaymentMethodView: View {
    @StateObject var paymentMethodViewModel = PaymentMethodViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Image("img_lefticon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblPayment)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 79.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 115.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 244.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        HStack {
                            Image("img_creditcardico")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kMsgCreditCardOr)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 134.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 185.0))
                        }
                        .onTapGesture {
                            paymentMethodViewModel.nextScreen = "ChooseCreditOrDebitCardView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.Blue50)
                        .padding(.top, getRelativeHeight(size: 28.0))
                        HStack {
                            Image("img_paypalicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblPaypal)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 46.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 273.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        HStack {
                            Image("img_bankicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblBankTransfer)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 93.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 226.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 220.0), alignment: .leading)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: ChooseCreditOrDebitCardView(),
                                   tag: "ChooseCreditOrDebitCardView",
                                   selection: $paymentMethodViewModel.nextScreen,
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

struct PaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentMethodView()
    }
}
