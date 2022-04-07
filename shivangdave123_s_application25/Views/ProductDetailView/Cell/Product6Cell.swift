import SwiftUI

struct Product6Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_productimage")
                .resizable()
                .frame(width: getRelativeWidth(size: 107.0), height: getRelativeHeight(size: 109.0), alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(size: 16.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            Text(StringConstants.kMsgFsNikeAirM)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.Indigo900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 107.0), height: getRelativeHeight(size: 36.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 8.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            Text(StringConstants.kLbl29943)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.LightBlueA200)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 50.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 8.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            HStack {
                Text(StringConstants.kLbl53433)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.Bluegray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 40.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                Spacer()
                Text(StringConstants.kLbl24Off)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.Pink300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 57.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 8.0))
            }
            .frame(width: getRelativeWidth(size: 107.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
            .padding(.vertical, getRelativeHeight(size: 8.0))
            .padding(.horizontal, getRelativeWidth(size: 16.0))
        }
        .frame(width: getRelativeWidth(size: 139.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Product6Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Product6Cell()
 }
 } */
