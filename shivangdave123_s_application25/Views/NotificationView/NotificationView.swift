import SwiftUI

struct NotificationView: View {
    @StateObject var notificationViewModel = NotificationViewModel()
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
                                Text(StringConstants.kLblNotification)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 103.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 139.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 220.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        HStack {
                            Image("img_offericon_1")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblOffer)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 33.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 286.0))
                        }
                        .onTapGesture {
                            notificationViewModel.nextScreen = "NotificationOfferView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(size: 28.0))
                        HStack {
                            Image("img_listicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblFeed)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 31.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 288.0))
                        }
                        .onTapGesture {
                            notificationViewModel.nextScreen = "NotificationFeedView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 56.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        HStack {
                            Image("img_notificationic_1")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblAcivity)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 47.0), height: getRelativeHeight(size: 18.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 19.0))
                                .padding(.leading, getRelativeWidth(size: 16.0))
                                .padding(.trailing, getRelativeWidth(size: 272.0))
                        }
                        .onTapGesture {
                            notificationViewModel.nextScreen = "Notification3View"
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
                    NavigationLink(destination: Notification3View(),
                                   tag: "Notification3View",
                                   selection: $notificationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationFeedView(),
                                   tag: "NotificationFeedView",
                                   selection: $notificationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: NotificationOfferView(),
                                   tag: "NotificationOfferView",
                                   selection: $notificationViewModel.nextScreen,
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

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
