import SwiftUI

struct ShortByView: View {
    @StateObject var shortByViewModel = ShortByViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                            Text(StringConstants.kLblShoryBy)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 76.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 16.0))
                        .padding(.trailing, getRelativeWidth(size: 247.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    Text(StringConstants.kLblBestMatch)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(size: 28.0))
                    Text(StringConstants.kMsgTimeEndingSo)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                        .background(ColorConstants.Blue50)
                    Text(StringConstants.kMsgTimeNewlyLis)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgPriceShippin)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgPriceShippin2)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                    Text(StringConstants.kMsgDistanceNeare)
                        .padding(.vertical, getRelativeHeight(size: 16.0))
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 376.0), alignment: .leading)
                .padding(.vertical, getRelativeHeight(size: 26.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(size: 30.0))
            .padding(.bottom, getRelativeHeight(size: 10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ShortByView_Previews: PreviewProvider {
    static var previews: some View {
        ShortByView()
    }
}
