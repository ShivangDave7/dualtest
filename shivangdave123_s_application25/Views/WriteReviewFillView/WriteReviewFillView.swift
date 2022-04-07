import SwiftUI

struct WriteReviewFillView: View {
    @StateObject var writeReviewFillViewModel = WriteReviewFillViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                            Text(StringConstants.kLblWriteReview)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 149.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.trailing, getRelativeWidth(size: 194.0))
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                    Text(StringConstants.kMsgPleaseWriteOv)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 42.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 44.0))
                    RatingBarView(selected: $writeReviewFillViewModel.ratingbarRating, heightWeightImage: getRelativeWidth(size: 32.0))
                        .frame(width: getRelativeWidth(size: 224.0), height: getRelativeHeight(size: 32.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.trailing, getRelativeWidth(size: 10.0))
                    Text(StringConstants.kMsgWriteYourRevi)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 139.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 24.0))
                        .padding(.trailing, getRelativeWidth(size: 10.0))
                    HStack {
                        TextField(StringConstants.kLblAddReview, text: $writeReviewFillViewModel.addreviewText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 160.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 12.0))
                    Button(action: {}, label: {
                        Text(StringConstants.kLblWriteReview)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(size: 276.0))
                }
                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 708.0), alignment: .center)
                .padding(.vertical, getRelativeHeight(size: 26.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(size: 30.0))
            .padding(.bottom, getRelativeHeight(size: 10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct WriteReviewFillView_Previews: PreviewProvider {
    static var previews: some View {
        WriteReviewFillView()
    }
}
