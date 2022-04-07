import SwiftUI

struct ChooseCreditOrDebitCardView: View {
    @StateObject var chooseCreditOrDebitCardViewModel = ChooseCreditOrDebitCardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
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
                                    Text(StringConstants.kLblChooseCard)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                        .foregroundColor(ColorConstants.Indigo900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(size: 12.0))
                                }
                                .frame(width: getRelativeWidth(size: 148.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                Spacer()
                                Image("img_plusicon_1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 171.0))
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        FSPagerViewSUI($chooseCreditOrDebitCardViewModel.group67CurrentPage, chooseCreditOrDebitCardViewModel.sliderData) { item in
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
                                    Text(StringConstants.kLblDominicOvo)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 71.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 21.0))
                                    Spacer()
                                    Text(StringConstants.kLbl0624)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(size: 32.0), height: getRelativeHeight(size: 15.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(size: 44.0))
                                        .padding(.trailing, getRelativeWidth(size: 175.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 17.0), alignment: .leading)
                                .padding(.vertical, getRelativeHeight(size: 10.0))
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 190.0), alignment: .leading)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                        }
                        PageIndicator(numPages: chooseCreditOrDebitCardViewModel.sliderData.count, currentPage: $chooseCreditOrDebitCardViewModel.group67CurrentPage, selectedColor: ColorConstants.LightBlueA200, unSelectedColor: ColorConstants.Blue50, spacing: 8.0)
                        Button(action: {
                            chooseCreditOrDebitCardViewModel.nextScreen = "SuccessScreenView"
                        }, label: {
                            Text(StringConstants.kLblPay76686)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 353.0))
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 692.0), alignment: .center)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: SuccessScreenView(),
                                   tag: "SuccessScreenView",
                                   selection: $chooseCreditOrDebitCardViewModel.nextScreen,
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

struct ChooseCreditOrDebitCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCreditOrDebitCardView()
    }
}
