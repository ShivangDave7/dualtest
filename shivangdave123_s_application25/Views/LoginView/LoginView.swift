import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        Image("img_logo_1")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(size: 68.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kMsgWelcomeToECo)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(size: 164.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kMsgSignInToCont)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(size: 120.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 8.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Spacer()
                            Image("img_email_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            TextField(StringConstants.kLblYourEmail, text: $loginViewModel.youremailText)
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
                            Image("img_lock_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            SecureField(StringConstants.kLblPassword, text: $loginViewModel.passwordText)
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
                            loginViewModel.nextScreen = "DashboardView"
                        }, label: {
                            Text(StringConstants.kLblSignIn)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 18.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(size: 134.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                                .background(ColorConstants.Blue50)
                                .padding(.vertical, getRelativeHeight(size: 10.0))
                            Spacer()
                            Text(StringConstants.kLblOr)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 21.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 28.0))
                            Spacer()
                            Divider()
                                .frame(width: getRelativeWidth(size: 137.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                                .background(ColorConstants.Blue50)
                                .padding(.vertical, getRelativeHeight(size: 10.0))
                                .padding(.leading, getRelativeWidth(size: 23.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 19.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Image("img_googleicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(size: 7.0))
                            Text(StringConstants.kMsgLoginWithGoog)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(size: 148.0), height: getRelativeHeight(size: 25.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 66.0))
                                .padding(.trailing, getRelativeWidth(size: 98.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    Group {
                        HStack {
                            Image("img_facebookicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(size: 7.0))
                            Text(StringConstants.kMsgLoginWithFace)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(size: 167.0), height: getRelativeHeight(size: 25.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(size: 16.0))
                                .padding(.leading, getRelativeWidth(size: 57.0))
                                .padding(.trailing, getRelativeWidth(size: 88.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.LightBlueA200)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(size: 117.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kMsgDonTHaveAnA)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.IndigoA200)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(size: 212.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                            .padding(.vertical, getRelativeHeight(size: 8.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            .onTapGesture {
                                loginViewModel.nextScreen = "RegisterformView"
                            }
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: RegisterformView(),
                                   tag: "RegisterformView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $loginViewModel.nextScreen,
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
