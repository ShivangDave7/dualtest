import SwiftUI

struct Order2Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLblSdg1345kjd)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                .foregroundColor(ColorConstants.Indigo900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 93.0), height: getRelativeHeight(size: 21.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 6.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            Text(StringConstants.kMsgOrderAtECom)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.Indigo90087)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.trailing)
                .frame(width: getRelativeWidth(size: 195.0), height: getRelativeHeight(size: 22.0), alignment: .trailing)
                .padding(.horizontal, getRelativeWidth(size: 16.0))
                .opacity(0.5)
            Divider()
                .frame(width: getRelativeWidth(size: 342.0), height: getRelativeHeight(size: 1.0), alignment: .leading)
                .background(ColorConstants.Blue50)
                .padding(.top, getRelativeHeight(size: 22.0))
            HStack {
                Text(StringConstants.kLblOrderStatus)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 79.13), height: getRelativeHeight(size: 22.0), alignment: .leading)
                    .opacity(0.5)
                Spacer()
                Text(StringConstants.kLblShipping)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.trailing)
                    .frame(width: getRelativeWidth(size: 55.0), height: getRelativeHeight(size: 22.0), alignment: .trailing)
                    .padding(.leading, getRelativeWidth(size: 173.12))
            }
            .onTapGesture {}
            .frame(width: getRelativeWidth(size: 309.25), height: getRelativeHeight(size: 22.0), alignment: .leading)
            .padding(.top, getRelativeHeight(size: 13.0))
            .padding(.horizontal, getRelativeWidth(size: 16.0))
            HStack {
                Text(StringConstants.kLblItems)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 34.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
                    .opacity(0.5)
                Spacer()
                Text(StringConstants.kMsg1ItemsPurchas)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.trailing)
                    .frame(width: getRelativeWidth(size: 115.0), height: getRelativeHeight(size: 22.0), alignment: .trailing)
                    .padding(.leading, getRelativeWidth(size: 158.0))
            }
            .frame(width: getRelativeWidth(size: 309.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
            .padding(.top, getRelativeHeight(size: 7.0))
            .padding(.horizontal, getRelativeWidth(size: 16.0))
            HStack {
                Text(StringConstants.kLblPrice)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo90087)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 30.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
                    .opacity(0.5)
                Spacer()
                Text(StringConstants.kLbl29943)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.LightBlueA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.trailing)
                    .frame(width: getRelativeWidth(size: 50.0), height: getRelativeHeight(size: 22.0), alignment: .trailing)
                    .padding(.leading, getRelativeWidth(size: 227.0))
            }
            .frame(width: getRelativeWidth(size: 309.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
            .padding(.top, getRelativeHeight(size: 7.0))
            .padding(.bottom, getRelativeHeight(size: 5.0))
            .padding(.horizontal, getRelativeWidth(size: 16.0))
        }
        .frame(width: getRelativeWidth(size: 342.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Order2Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Order2Cell()
 }
 } */
