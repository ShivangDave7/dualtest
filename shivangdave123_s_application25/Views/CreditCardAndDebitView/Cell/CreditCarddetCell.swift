import SwiftUI

struct CreditCarddetCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_creditcardlog")
                .resizable()
                .frame(width: getRelativeWidth(size: 34.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(size: 24.0))
                .padding(.horizontal, getRelativeWidth(size: 24.0))
            Text(StringConstants.kMsg63269124)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 24.0)))
                .foregroundColor(ColorConstants.WhiteA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(size: 299.0), height: getRelativeHeight(size: 36.0), alignment: .center)
                .padding(.top, getRelativeHeight(size: 31.0))
                .padding(.horizontal, getRelativeWidth(size: 21.0))
            HStack {
                Text(StringConstants.kLblCardHolder)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.WhiteA70087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 71.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 21.0))
                    .opacity(0.5)
                Spacer()
                Text(StringConstants.kLblCardSave)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.WhiteA70087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 57.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 37.0))
                    .padding(.trailing, getRelativeWidth(size: 153.0))
                    .opacity(0.5)
            }
            .onTapGesture {}
            .frame(width: getRelativeWidth(size: 341.0), height: getRelativeHeight(size: 17.0), alignment: .leading)
            .padding(.top, getRelativeHeight(size: 17.0))
            HStack {
                Text(StringConstants.kLblDominicOvo)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(size: 71.9), height: getRelativeHeight(size: 15.0), alignment: .center)
                    .padding(.leading, getRelativeWidth(size: 21.0))
                Spacer()
                Text(StringConstants.kLbl0624)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .frame(width: getRelativeWidth(size: 42.76), height: getRelativeHeight(size: 15.0), alignment: .center)
                    .padding(.leading, getRelativeWidth(size: 34.34))
                    .padding(.trailing, getRelativeWidth(size: 169.0))
            }
            .frame(width: getRelativeWidth(size: 341.0), height: getRelativeHeight(size: 17.0), alignment: .leading)
            .padding(.vertical, getRelativeHeight(size: 2.0))
        }
        .frame(width: getRelativeWidth(size: 341.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
        .hideNavigationBar()
    }
}

/* struct CreditCarddetCell_Previews: PreviewProvider {

 static var previews: some View {
 			CreditCarddetCell()
 }
 } */
