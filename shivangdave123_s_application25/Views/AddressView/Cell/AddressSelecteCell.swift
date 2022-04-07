import SwiftUI

struct AddressSelecteCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLblPriscekila)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                .foregroundColor(ColorConstants.Indigo900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 73.0), height: getRelativeHeight(size: 21.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 24.0))
                .padding(.horizontal, getRelativeWidth(size: 24.0))
            Text(StringConstants.kMsg3711SpringHil)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 293.0), height: getRelativeHeight(size: 44.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 16.0))
                .padding(.horizontal, getRelativeWidth(size: 24.0))
            Text(StringConstants.kLbl991234567890)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(size: 101.0), height: getRelativeHeight(size: 22.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 16.0))
                .padding(.horizontal, getRelativeWidth(size: 24.0))
            HStack {
                Text(StringConstants.kLblEdit)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                    .foregroundColor(ColorConstants.LightBlueA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 27.0), height: getRelativeHeight(size: 25.0), alignment: .leading)
                Spacer()
                Text(StringConstants.kLblDelete)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                    .foregroundColor(ColorConstants.Pink300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 47.0), height: getRelativeHeight(size: 25.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 32.0))
            }
            .frame(width: getRelativeWidth(size: 108.0), height: getRelativeHeight(size: 25.0), alignment: .leading)
            .padding(.vertical, getRelativeHeight(size: 16.0))
            .padding(.horizontal, getRelativeWidth(size: 24.0))
        }
        .frame(width: getRelativeWidth(size: 341.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.LightBlueA200, lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct AddressSelecteCell_Previews: PreviewProvider {

 static var previews: some View {
 			AddressSelecteCell()
 }
 } */
