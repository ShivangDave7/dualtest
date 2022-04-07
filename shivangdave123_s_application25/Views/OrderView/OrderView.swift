import SwiftUI

struct OrderView: View {
    @StateObject var orderViewModel = OrderViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                                Text(StringConstants.kLblOrder)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                    .foregroundColor(ColorConstants.Indigo900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(size: 49.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(size: 12.0))
                            }
                            .frame(width: getRelativeWidth(size: 85.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                            .padding(.trailing, getRelativeWidth(size: 258.0))
                        }
                        .frame(width: getRelativeWidth(size: 344.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        Order2Cell()
                                            .onTapGesture {
                                                orderViewModel.nextScreen = "OrderDetailsView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(size: 344.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(size: 36.0))
                    }
                    .frame(width: getRelativeWidth(size: 344.0), height: getRelativeHeight(size: 590.0), alignment: .center)
                    .padding(.vertical, getRelativeHeight(size: 26.0))
                    .padding(.horizontal, getRelativeWidth(size: 15.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(size: 30.0))
                .padding(.bottom, getRelativeHeight(size: 10.0))
                Group {
                    NavigationLink(destination: OrderDetailsView(),
                                   tag: "OrderDetailsView",
                                   selection: $orderViewModel.nextScreen,
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

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
