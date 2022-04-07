import SwiftUI

struct DressCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_dressicon")
                .resizable()
                .frame(width: getRelativeWidth(size: 68.0), height: getRelativeHeight(size: 70.0), alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kLblDress)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 10.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(size: 68.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                .padding(.top, getRelativeHeight(size: 8.0))
        }
        .frame(width: getRelativeWidth(size: 68.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct DressCell_Previews: PreviewProvider {

 static var previews: some View {
 			DressCell()
 }
 } */
