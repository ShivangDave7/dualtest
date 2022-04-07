import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
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
                                Text(StringConstants.kLblProfile)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 56.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 92.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 267.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                        HStack {
                            Image("img_profilepicture_3")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .padding(.leading, getRelativeWidth(size: 16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblDominicOvo)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(size: 97.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                                Text(StringConstants.kLblDominicOvo2)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 98.0), height: getRelativeHeight(size: 22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 5.0))
                            }
                            .frame(width: getRelativeWidth(size: 98.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                            .padding(.top, getRelativeHeight(size: 11.0))
                            .padding(.bottom, getRelativeHeight(size: 13.0))
                            .padding(.leading, getRelativeWidth(size: 16.0))
                            .padding(.trailing, getRelativeWidth(size: 173.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 72.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 52.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 4, id: \.self) { index in
                                        GroupCell()
                                            .onTapGesture {
                                                profileViewModel.nextScreen = "ChangePasswordView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 450.0), alignment: .leading)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: ChangePasswordView(),
                                   tag: "ChangePasswordView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
