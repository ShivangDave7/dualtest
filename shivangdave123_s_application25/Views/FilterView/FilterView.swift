import SwiftUI

struct FilterView: View {
    @StateObject var filterViewModel = FilterViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_closeicon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.15), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblFilterSearch)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 109.0), height: getRelativeHeight(size: 23.15), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 145.0), height: getRelativeHeight(size: 23.15), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 18.0))
                        .padding(.trailing, getRelativeWidth(size: 212.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 23.15), alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Text(StringConstants.kLblPriceRange)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 91.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack {
                                    Text(StringConstants.kLbl1245)
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        .padding(.vertical, getRelativeHeight(size: 13.0))
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 165.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(ColorConstants.WhiteA700)
                                    Spacer()
                                    Text(StringConstants.kLbl9344)
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        .padding(.vertical, getRelativeHeight(size: 13.0))
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                        .foregroundColor(ColorConstants.Bluegray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(size: 165.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(ColorConstants.WhiteA700)
                                        .padding(.leading, getRelativeWidth(size: 13.0))
                                }
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                Text(StringConstants.kLblCondition)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 75.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 36.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                HStack {
                                    Button(action: {}, label: {
                                        Text(StringConstants.kLblNew)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                            .foregroundColor(ColorConstants.Bluegray300)
                                            .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                    Button(action: {}, label: {
                                        Text(StringConstants.kLblUsed)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                            .foregroundColor(ColorConstants.LightBlueA200)
                                            .frame(width: getRelativeWidth(size: 65.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(size: 65.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                    .padding(.leading, getRelativeWidth(size: 9.0))
                                    Button(action: {}, label: {
                                        Text(StringConstants.kLblNotSpecified)
                                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                            .foregroundColor(ColorConstants.LightBlueA200)
                                            .frame(width: getRelativeWidth(size: 120.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(size: 120.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                    .padding(.leading, getRelativeWidth(size: 8.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(size: 261.0), height: getRelativeHeight(size: 50.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                .padding(.horizontal, getRelativeWidth(size: 16.0))
                                Text(StringConstants.kLblBuyingFormat)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblAllListings)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 99.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 99.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblAcceptsOffers)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.LightBlueA200)
                                                .frame(width: getRelativeWidth(size: 129.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 129.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblAuction)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 34.0))
                                        Spacer()
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblBuyItNow)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 98.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 98.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblClassifiedAds)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 123.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 123.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 130.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 108.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                Text(StringConstants.kLblItemLocation)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 104.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                VStack {
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblUsOnly)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 81.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblNorthAmerica)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.LightBlueA200)
                                                .frame(width: getRelativeWidth(size: 129.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 129.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblEurope)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 77.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 77.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 56.0))
                                        Spacer()
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    Button(action: {}, label: {
                                        Text(StringConstants.kLblAsia)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                            .foregroundColor(ColorConstants.Bluegray300)
                                            .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(size: 59.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 108.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 12.0))
                            }
                            Group {
                                Text(StringConstants.kLblShowOnly)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 80.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(size: 24.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblFreeReturns)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 112.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kMsgReturnsAccepte)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.LightBlueA200)
                                                .frame(width: getRelativeWidth(size: 150.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 150.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 89.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kMsgAuthorizedSell)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 140.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 140.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblCompletedItems)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 144.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 144.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 67.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblSoldItems)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.LightBlueA200)
                                                .frame(width: getRelativeWidth(size: 101.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 101.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblDealsSavings)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 135.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 135.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 115.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblSaleItems)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 99.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 99.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kLblListedAsLots)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 118.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 118.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 134.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    HStack {
                                        Button(action: {}, label: {
                                            Text(StringConstants.kMsgSearchInDescr)
                                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.LightBlueA200)
                                                .frame(width: getRelativeWidth(size: 174.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 174.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA20019))
                                        .padding(.leading, getRelativeWidth(size: 16.0))
                                        Spacer()
                                        Button(action: {}, label: {
                                            Text(StringConstants.kMsgBenefitsCharit)
                                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                                .foregroundColor(ColorConstants.Bluegray300)
                                                .frame(width: getRelativeWidth(size: 132.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(size: 132.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                        .padding(.leading, getRelativeWidth(size: 8.0))
                                        .padding(.trailing, getRelativeWidth(size: 45.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 50.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    Button(action: {}, label: {
                                        Text(StringConstants.kMsgAuthenticityVe)
                                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 12.0)))
                                            .foregroundColor(ColorConstants.Bluegray300)
                                            .frame(width: getRelativeWidth(size: 163.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    })
                                    .frame(width: getRelativeWidth(size: 163.0), height: getRelativeHeight(size: 50.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                                    .padding(.top, getRelativeHeight(size: 8.0))
                                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                                }
                                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 340.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(size: 12.0))
                                Button(action: {
                                    filterViewModel.nextScreen = "SearchResultView"
                                }, label: {
                                    Text(StringConstants.kLblApply)
                                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                })
                                .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 57.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                                .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
                                .padding(.top, getRelativeHeight(size: 28.0))
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
                Group {
                    NavigationLink(destination: SearchResultView(),
                                   tag: "SearchResultView",
                                   selection: $filterViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
