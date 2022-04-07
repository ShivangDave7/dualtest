import SwiftUI

struct GroupCell: View {
    var body: some View {
        HStack {
            HStack {
                Image("img_gendericon")
                    .resizable()
                    .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLblGender)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Indigo900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(size: 46.0), height: getRelativeHeight(size: 18.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 16.0))
            }
            .onTapGesture {}
            .frame(width: getRelativeWidth(size: 86.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
            .padding(.leading, getRelativeWidth(size: 16.0))
            HStack {
                Text(StringConstants.kLblMale)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                    .foregroundColor(ColorConstants.Bluegray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.trailing)
                    .frame(width: getRelativeWidth(size: 29.0), height: getRelativeHeight(size: 22.0), alignment: .trailing)
                Image("img_righticon")
                    .resizable()
                    .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(size: 16.0))
            }
            .frame(width: getRelativeWidth(size: 69.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
            .padding(.leading, getRelativeWidth(size: 184.0))
            .padding(.trailing, getRelativeWidth(size: 16.0))
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .background(ColorConstants.WhiteA700)
        .hideNavigationBar()
    }
}

/* struct GroupCell_Previews: PreviewProvider {

 static var previews: some View {
 			GroupCell()
 }
 } */
