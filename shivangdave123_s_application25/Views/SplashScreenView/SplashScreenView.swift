import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_timestyle")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 54.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.bottom, getRelativeHeight(size: 11.0))
                                .padding(.leading, getRelativeWidth(size: 21.0))
                            Spacer()
                            HStack {
                                Image("img_mobilesignal")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 17.0), height: getRelativeHeight(size: 10.67), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_wifi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 15.27), height: getRelativeHeight(size: 10.97), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 5.02))
                                Image("img_battery")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.33), height: getRelativeHeight(size: 11.33), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(size: 5.04))
                            }
                            .onTapGesture {
                                splashScreenViewModel.nextScreen = "LoginView"
                            }
                            .frame(width: getRelativeWidth(size: 66.66), height: getRelativeHeight(size: 11.33), alignment: .bottom)
                            .padding(.top, getRelativeHeight(size: 17.33))
                            .padding(.bottom, getRelativeHeight(size: 15.34))
                            .padding(.leading, getRelativeWidth(size: 218.67))
                            .padding(.trailing, getRelativeWidth(size: 14.67))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 44.0), alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 44.0), alignment: .leading)
                    Image("img_logo")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(size: 326.0))
                        .padding(.horizontal, getRelativeWidth(size: 151.0))
                        .onTapGesture {
                            splashScreenViewModel.nextScreen = "LoginView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.LightBlueA200)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $splashScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.LightBlueA200)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashScreenViewModel.nextScreen = "LoginView"
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
