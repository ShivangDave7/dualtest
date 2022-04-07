import SwiftUI

struct SearchResult1View: View {
    @StateObject var searchResult1ViewModel = SearchResult1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            HStack {
                                Spacer()
                                Image("img_searchicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 16.0), height: getRelativeHeight(size: 16.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                TextField(StringConstants.kLblSearchProduct, text: $searchResult1ViewModel.searchproductText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 263.0), height: getRelativeHeight(size: 46.0), alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            Spacer()
                            Image("img_shorticon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 11.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Spacer()
                            Image("img_filter")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 11.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 46.0), alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 46.0), alignment: .leading)
                    Divider()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .leading)
                        .background(ColorConstants.Blue50)
                        .padding(.top, getRelativeHeight(size: 16.0))
                    HStack {
                        Text(StringConstants.kLbl0Result)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Indigo90087)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 53.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .opacity(0.5)
                        Spacer()
                        HStack {
                            Text(StringConstants.kLblManShoes)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.trailing)
                                .frame(width: getRelativeWidth(size: 71.0), height: getRelativeHeight(size: 22.0), alignment: .topTrailing)
                            Image("img_downicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(size: 8.0))
                        }
                        .frame(width: getRelativeWidth(size: 103.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                        .padding(.leading, getRelativeWidth(size: 187.0))
                        .padding(.trailing, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 15.0))
                    Image("img_notfoundicon")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 131.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgProductNotFou)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 236.0), height: getRelativeHeight(size: 36.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgThankYouForS)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Bluegray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 303.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Button(action: {}, label: {
                        Text(StringConstants.kLblBackToHome)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(size: 16.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 460.0), alignment: .leading)
                .padding(.vertical, getRelativeHeight(size: 16.0))
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

struct SearchResult1View_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult1View()
    }
}
