import SwiftUI

struct Notification3View: View {
    @StateObject var notification3ViewModel = Notification3ViewModel()
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
                            Text(StringConstants.kLblActivity)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 68.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 12.0))
                        }
                        .frame(width: getRelativeWidth(size: 104.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 16.0))
                        .padding(.trailing, getRelativeWidth(size: 255.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    ActivitydetailCell()
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 28.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 501.0), alignment: .leading)
                .padding(.vertical, getRelativeHeight(size: 26.0))
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

struct Notification3View_Previews: PreviewProvider {
    static var previews: some View {
        Notification3View()
    }
}
