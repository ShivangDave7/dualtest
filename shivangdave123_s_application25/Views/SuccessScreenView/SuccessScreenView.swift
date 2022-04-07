import SwiftUI

struct SuccessScreenView: View {
    @StateObject var successScreenViewModel = SuccessScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_successicon")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 248.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kLblSuccess)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 105.0), height: getRelativeHeight(size: 36.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.kMsgThankYouForS)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo90087)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 303.0), height: getRelativeHeight(size: 22.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                        .opacity(0.5)
                    Button(action: {
                        successScreenViewModel.nextScreen = "OrderView"
                    }, label: {
                        Text(StringConstants.kLblBackToOrder)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.vertical, getRelativeHeight(size: 16.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: OrderView(),
                                   tag: "OrderView",
                                   selection: $successScreenViewModel.nextScreen,
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

struct SuccessScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessScreenView()
    }
}
