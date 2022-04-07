import SwiftUI

struct AddAddressView: View {
    @StateObject var addAddressViewModel = AddAddressViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    HStack {
                        Image("img_lefticon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblAddAddress)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                            .foregroundColor(ColorConstants.Indigo900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 110.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(size: 12.0))
                    }
                    .frame(width: getRelativeWidth(size: 146.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                    .padding(.leading, getRelativeWidth(size: 16.0))
                    .padding(.trailing, getRelativeWidth(size: 213.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
                            Text(StringConstants.kMsgCountryOrRegi)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 135.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheCount, text: $addAddressViewModel.enterthecountText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblFirstName)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 83.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheFirst, text: $addAddressViewModel.enterthefirstText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblLastName)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 23.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheLast, text: $addAddressViewModel.enterthelastText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblStreetAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheStree, text: $addAddressViewModel.enterthestreeText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        Group {
                            Text(StringConstants.kMsgStreetAddress)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 209.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 22.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheStree2, text: $addAddressViewModel.enterthestreeText1)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 16.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblCity)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 31.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 22.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kLblEnterTheCity, text: $addAddressViewModel.enterthecityText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kMsgStateProvince)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 174.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheState, text: $addAddressViewModel.enterthestateText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Text(StringConstants.kLblZipCode)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 67.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheZipC, text: $addAddressViewModel.enterthezipcText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                        Group {
                            Text(StringConstants.kLblPhoneNumber)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(size: 24.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterThePhone, text: $addAddressViewModel.enterthephoneText)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                    .foregroundColor(ColorConstants.Bluegray300)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(size: 12.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                            Button(action: {}, label: {
                                Text(StringConstants.kLblAddAddress)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            })
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                            .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                            .padding(.top, getRelativeHeight(size: 20.0))
                            .padding(.horizontal, getRelativeWidth(size: 16.0))
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
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

struct AddAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAddressView()
    }
}
