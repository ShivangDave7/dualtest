import SwiftUI

struct AddressView: View {
    @StateObject var addressViewModel = AddressViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_lefticon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 108.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.trailing, getRelativeWidth(size: 235.0))
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    AddressSelecteCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(size: 343.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 34.0))
                    Button(action: {}, label: {
                        Text(StringConstants.kLblAddAddress)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                    .padding(.top, getRelativeHeight(size: 143.0))
                }
                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 692.0), alignment: .center)
                .padding(.vertical, getRelativeHeight(size: 26.0))
                .padding(.horizontal, getRelativeWidth(size: 16.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(size: 30.0))
            .padding(.bottom, getRelativeHeight(size: 10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
