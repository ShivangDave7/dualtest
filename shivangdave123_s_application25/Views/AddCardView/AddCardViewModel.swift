import Foundation
import SwiftUI

class AddCardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var entercardnumbText: String = ""
    @Published var expirationdateText: String = ""
    @Published var securitycodeText: String = ""
    @Published var entercardnumbText1: String = ""
}
