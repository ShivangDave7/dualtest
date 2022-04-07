import SwiftUI

struct ChangePasswordView: View {
    @StateObject var changePasswordViewModel = ChangePasswordViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            HStack {
                                Image("img_lefticon")
                                    .resizable()
                                    .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblChangePassword)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 157.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 193.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 166.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        Text(StringConstants.kLblOldPassword)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 104.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                            .padding(.top, getRelativeHeight(size: 44.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Spacer()
                            Image("img_lock_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            TextField(StringConstants.kMsg, text: $changePasswordViewModel.dhiwiseVar)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kLblNewPassword)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 111.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                            .padding(.top, getRelativeHeight(size: 24.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Spacer()
                            Image("img_lock_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            TextField(StringConstants.kMsg, text: $changePasswordViewModel.dhiwiseVar2)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Text(StringConstants.kMsgNewPasswordAg)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 159.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                            .padding(.top, getRelativeHeight(size: 24.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        HStack {
                            Spacer()
                            Image("img_lock_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            TextField(StringConstants.kMsg, text: $changePasswordViewModel.dhiwiseVar4)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Bluegray300)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        Button(action: {
                            changePasswordViewModel.nextScreen = "AccountView"
                        }, label: {
                            Text(StringConstants.kLblSave)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                        .padding(.top, getRelativeHeight(size: 276.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 692.0), alignment: .leading)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: AccountView(),
                                   tag: "AccountView",
                                   selection: $changePasswordViewModel.nextScreen,
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

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
