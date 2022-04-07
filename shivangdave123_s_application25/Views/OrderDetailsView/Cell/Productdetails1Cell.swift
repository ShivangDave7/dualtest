import SwiftUI

struct Productdetails1Cell: View {
    var body: some View {
        HStack {
            Image("img_productdetails")
                .resizable()
                .frame(width: getRelativeWidth(size: 70.0), height: getRelativeHeight(size: 72.0), alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(size: 16.0))
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(StringConstants.kMsgNikeAirZoomP)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 156.0), height: getRelativeHeight(size: 36.0), alignment: .leading)
                    Spacer()
                    Image("img_loveicon_1")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(size: 12.0))
                        .padding(.leading, getRelativeWidth(size: 13.0))
                    Spacer()
                    Image("img_trashicon")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .scaledToFit()
                        .padding(.bottom, getRelativeHeight(size: 12.0))
                        .padding(.leading, getRelativeWidth(size: 8.0))
                }
                .frame(width: getRelativeWidth(size: 225.0), height: getRelativeHeight(size: 36.0), alignment: .leading)
                HStack {
                    Text(StringConstants.kLbl29943)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 87.55), height: getRelativeHeight(size: 18.0), alignment: .leading)
                    Spacer()
                    HStack {
                        Image("img_remove_1")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 31.32), height: getRelativeHeight(size: 20.0), alignment: .leading)
                            .scaledToFit()
                        Button(action: {}, label: {
                            Text(StringConstants.kLbl1)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Indigo90087)
                                .frame(width: getRelativeWidth(size: 39.65), height: getRelativeHeight(size: 20.0), alignment: .center)
                        })
                        .frame(width: getRelativeWidth(size: 39.65), height: getRelativeHeight(size: 20.0), alignment: .center)
                        .background(ColorConstants.Blue50)
                        Image("img_add_1")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 31.32), height: getRelativeHeight(size: 20.0), alignment: .leading)
                            .scaledToFit()
                    }
                    .frame(width: getRelativeWidth(size: 106.29), height: getRelativeHeight(size: 20.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 29.16))
                }
                .frame(width: getRelativeWidth(size: 225.0), height: getRelativeHeight(size: 20.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 17.0))
            }
            .frame(width: getRelativeWidth(size: 225.0), height: getRelativeHeight(size: 73.0), alignment: .leading)
            .padding(.leading, getRelativeWidth(size: 12.0))
            .padding(.trailing, getRelativeWidth(size: 16.0))
        }
        .frame(width: getRelativeWidth(size: 341.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
        .hideNavigationBar()
    }
}

/* struct Productdetails1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Productdetails1Cell()
 }
 } */
