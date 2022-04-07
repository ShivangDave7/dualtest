import SwiftUI

struct SearchView: View {
    @StateObject var searchViewModel = SearchViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                HStack {
                                    Spacer()
                                    Image("img_searchicon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 16.0), height: getRelativeHeight(size: 16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    TextField(StringConstants.kLblNikeAirMax, text: $searchViewModel.nikeairmaxText)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Indigo90087)
                                        .padding()
                                    Image("img_clear_icon")
                                        .resizable()
                                        .frame(width: getRelativeWidth(size: 20.0), height: getRelativeHeight(size: 20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(size: 291.0), height: getRelativeHeight(size: 44.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.LightBlueA200, lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                Spacer()
                                Image("img_micicon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(size: 10.0))
                                    .padding(.leading, getRelativeWidth(size: 28.0))
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 44.0), alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 44.0), alignment: .leading)
                        Divider()
                            .frame(width: getRelativeWidth(size: 369.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.top, getRelativeHeight(size: 17.0))
                            .padding(.leading, getRelativeWidth(size: 6.0))
                        Text(StringConstants.kMsgNikeAirMax273)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                            .padding(.top, getRelativeHeight(size: 9.0))
                            .onTapGesture {
                                searchViewModel.nextScreen = "SearchResultView"
                            }
                        Text(StringConstants.kMsgNikeAirVaporm)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                        Text(StringConstants.kMsgNikeAirMax273)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                        Text(StringConstants.kMsgNikeAirMax274)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                        Text(StringConstants.kMsgNikeAirVaporm2)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                        Text(StringConstants.kMsgNikeAirMax97)
                            .padding(.vertical, getRelativeHeight(size: 16.0))
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 54.0), alignment: .topLeading)
                            .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 395.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 17.0))
                    .padding(.bottom, getRelativeHeight(size: 20.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: SearchResultView(),
                                   tag: "SearchResultView",
                                   selection: $searchViewModel.nextScreen,
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

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
