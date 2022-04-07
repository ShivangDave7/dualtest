import SwiftUI

struct SearchResultView: View {
    @StateObject var searchResultViewModel = SearchResultViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                                TextField(StringConstants.kLblNikeAirMax, text: $searchResultViewModel.nikeairmaxText)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo90087)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 263.0), height: getRelativeHeight(size: 42.0), alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            Spacer()
                            Image("img_shorticon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 9.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .onTapGesture {
                                    searchResultViewModel.nextScreen = "ShortByView"
                                }
                            Spacer()
                            Image("img_filter")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 9.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .onTapGesture {
                                    searchResultViewModel.nextScreen = "FilterView"
                                }
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 42.0), alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 42.0), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Divider()
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .leading)
                                .background(ColorConstants.Blue50)
                            HStack {
                                Text(StringConstants.kLbl145Result)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Indigo90087)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 66.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
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
                                .padding(.leading, getRelativeWidth(size: 174.0))
                                .padding(.trailing, getRelativeWidth(size: 16.0))
                            }
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(size: 15.0))
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack {
                                    LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()], spacing: 13.0) {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            Product7Cell()
                                        }
                                    }
                                }
                            }
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            .fixedSize(horizontal: false, vertical: false)
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: FilterView(),
                                   tag: "FilterView",
                                   selection: $searchResultViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShortByView(),
                                   tag: "ShortByView",
                                   selection: $searchResultViewModel.nextScreen,
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

struct SearchResultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultView()
    }
}
