import SwiftUI

struct ActivitydetailCell: View {
    var body: some View {
        HStack {
            Image("img_transactionico")
                .resizable()
                .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(size: 16.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgTransactionNik)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 305.0), height: getRelativeHeight(size: 21.0), alignment: .leading)
                Text(StringConstants.kMsgCulpaCillumCo)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Bluegray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 305.0), height: getRelativeHeight(size: 66.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 8.0))
                Text(StringConstants.kMsgApril302014)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 305.0), height: getRelativeHeight(size: 15.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 8.0))
            }
            .frame(width: getRelativeWidth(size: 305.0), height: getRelativeHeight(size: 118.0), alignment: .leading)
            .padding(.leading, getRelativeWidth(size: 12.0))
            .padding(.trailing, getRelativeWidth(size: 16.0))
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct ActivitydetailCell_Previews: PreviewProvider {

 static var previews: some View {
 			ActivitydetailCell()
 }
 } */
