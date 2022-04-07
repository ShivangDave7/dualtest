import SwiftUI

struct ReiviewCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Image("img_profilepicture")
                    .resizable()
                    .frame(width: getRelativeWidth(size: 46.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .scaledToFit()
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblJamesLawson)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 110.0), height: getRelativeHeight(size: 21.0), alignment: .leading)
                    RatingBarView(selected: .constant(2), heightWeightImage: getRelativeWidth(size: 16.0))
                        .frame(width: getRelativeWidth(size: 94.0), height: getRelativeHeight(size: 16.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 4.0))
                        .padding(.trailing, getRelativeWidth(size: 10.0))
                }
                .frame(width: getRelativeWidth(size: 110.0), height: getRelativeHeight(size: 41.0), alignment: .leading)
                .padding(.bottom, getRelativeHeight(size: 4.0))
                .padding(.leading, getRelativeWidth(size: 16.0))
                .padding(.trailing, getRelativeWidth(size: 157.0))
            }
            .frame(width: getRelativeWidth(size: 331.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
            Text(StringConstants.kMsgAirMaxAreAlw)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 331.0), height: getRelativeHeight(size: 110.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 16.0))
            Text(StringConstants.kMsgDecember1020)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 331.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 16.0))
        }
        .frame(width: getRelativeWidth(size: 331.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct ReiviewCell_Previews: PreviewProvider {

 static var previews: some View {
 			ReiviewCell()
 }
 } */
