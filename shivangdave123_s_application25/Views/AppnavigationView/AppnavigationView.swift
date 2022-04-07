import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(size: 20.0)))
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                            .padding(.vertical, getRelativeHeight(size: 10.0))
                            .padding(.horizontal, getRelativeWidth(size: 20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(size: 16.0)))
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 19.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 20.0))
                        Divider()
                            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(size: 5.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblSplashScreen)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SplashScreenView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLogin)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LoginView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblRegisterForm)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "RegisterformView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblDashboard)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "DashboardView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblOfferScreen)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "OfferScreenView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgFavoriteProduc)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "FavoriteProductView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblProductDetail)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ProductDetailView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblReviewProduct)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ReviewProductView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kMsgWriteReviewFi)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "WriteReviewFillView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblNotification)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NotificationView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgNotificationOf)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NotificationOfferView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgNotificationFe)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "NotificationFeedView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblNotification)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "Notification3View"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblExplore)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ExploreView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSearch)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SearchView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSearchResult)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SearchResultView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblSearchResult)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SearchResult1View"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblListCategory)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ListCategoryView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblShortBy)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ShortByView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblFilter)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "FilterView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblCart)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "CartView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblShipTo)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ShipToView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblPaymentMethod)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "PaymentMethodView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgChooseCreditO)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ChooseCreditOrDebitCardView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblSuccessScreen)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SuccessScreenView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblOfferScreen)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "OfferScreen1View"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblAccount)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AccountView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblProfile)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ProfileView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblChangePassword)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ChangePasswordView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblOrder)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "OrderView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblOrderDetails)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "OrderDetailsView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblAddAddress)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AddAddressView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblAddPayment)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AddPaymentView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgCreditCardAnd)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "CreditCardAndDebitView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblAddCard)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AddCardView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgLailyfaFebrina)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LailyfaFebrinaCardView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblAddress)
                                        .font(Font.system(size: getRelativeHeight(size: 20.0)))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(size: 10.0))
                                        .padding(.horizontal, getRelativeWidth(size: 20.0))
                                    Divider()
                                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(size: 5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "AddressView"
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: SplashScreenView(),
                                   tag: "SplashScreenView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: RegisterformView(),
                                   tag: "RegisterformView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: OfferScreenView(),
                                   tag: "OfferScreenView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FavoriteProductView(),
                                   tag: "FavoriteProductView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ReviewProductView(),
                                   tag: "ReviewProductView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: WriteReviewFillView(),
                                   tag: "WriteReviewFillView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: NotificationOfferView(),
                                   tag: "NotificationOfferView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationFeedView(),
                                   tag: "NotificationFeedView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ExploreView(),
                                   tag: "ExploreView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchResultView(),
                                   tag: "SearchResultView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ListCategoryView(),
                                   tag: "ListCategoryView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShortByView(),
                                   tag: "ShortByView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FilterView(),
                                   tag: "FilterView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CartView(),
                                   tag: "CartView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShipToView(),
                                   tag: "ShipToView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: PaymentMethodView(),
                                   tag: "PaymentMethodView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ChooseCreditOrDebitCardView(),
                                   tag: "ChooseCreditOrDebitCardView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SuccessScreenView(),
                                   tag: "SuccessScreenView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AccountView(),
                                   tag: "AccountView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ChangePasswordView(),
                                   tag: "ChangePasswordView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: OrderView(),
                                   tag: "OrderView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: OrderDetailsView(),
                                   tag: "OrderDetailsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AddAddressView(),
                                   tag: "AddAddressView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AddPaymentView(),
                                   tag: "AddPaymentView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: CreditCardAndDebitView(),
                                   tag: "CreditCardAndDebitView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AddCardView(),
                                   tag: "AddCardView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LailyfaFebrinaCardView(),
                                   tag: "LailyfaFebrinaCardView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AddressView(),
                                   tag: "AddressView",
                                   selection: $appnavigationViewModel.nextScreen,
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

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
