import SwiftUI

struct RegisterformView: View {
    @StateObject var registerformViewModel = RegisterformViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_logo_1")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 111.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgLetSGetStart)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 143.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgCreateAnNewA)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Bluegray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 152.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_user_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        TextField(StringConstants.kLblFullName, text: $registerformViewModel.fullnameText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 28.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_email_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        TextField(StringConstants.kLblYourEmail, text: $registerformViewModel.youremailText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 8.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_lock_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        SecureField(StringConstants.kLblPassword, text: $registerformViewModel.passwordText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 8.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_lock_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        SecureField(StringConstants.kLblPasswordAgain, text: $registerformViewModel.passwordagainText)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 8.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Button(action: {
                        registerformViewModel.nextScreen = "DashboardView"
                    }, label: {
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(size: 20.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgHaveAnAccount)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.IndigoA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 165.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                        .padding(.vertical, getRelativeHeight(size: 20.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $registerformViewModel.nextScreen,
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

struct RegisterformView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterformView()
    }
}
