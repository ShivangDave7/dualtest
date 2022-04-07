import SwiftUI

struct ReviewProductView: View {
    @StateObject var reviewProductViewModel = ReviewProductViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_lefticon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl5Review2)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 77.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 19.0))
                        .padding(.trailing, getRelativeWidth(size: 243.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            ReiviewCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(size: 343.0), alignment: .leading)
                            Button(action: {
                                reviewProductViewModel.nextScreen = "WriteReviewFillView"
                            }, label: {
                                Text(StringConstants.kLblWriteReview)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                            .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(size: 71.0))
                        }
                        .frame(width: getRelativeWidth(size: 343.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(size: 19.0))
                        .padding(.trailing, getRelativeWidth(size: 13.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: WriteReviewFillView(),
                                   tag: "WriteReviewFillView",
                                   selection: $reviewProductViewModel.nextScreen,
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

struct ReviewProductView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewProductView()
    }
}
