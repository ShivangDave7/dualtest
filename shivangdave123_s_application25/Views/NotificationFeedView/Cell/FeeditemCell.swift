import SwiftUI

struct FeeditemCell: View {
    var body: some View {
        HStack {
            Image("img_productimage_10")
                .resizable()
                .frame(width: getRelativeWidth(size: 46.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(size: 16.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblNewProduct)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 281.0), height: getRelativeHeight(size: 21.0), alignment: .leading)
                Text(StringConstants.kMsgNikeAirZoomP2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Bluegray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 281.0), height: getRelativeHeight(size: 44.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 4.0))
                Text(StringConstants.kMsgJune320155)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 281.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 4.0))
            }
            .frame(width: getRelativeWidth(size: 281.0), height: getRelativeHeight(size: 88.0), alignment: .leading)
            .padding(.leading, getRelativeWidth(size: 12.0))
            .padding(.trailing, getRelativeWidth(size: 16.0))
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct FeeditemCell_Previews: PreviewProvider {

 static var previews: some View {
 			FeeditemCell()
 }
 } */
