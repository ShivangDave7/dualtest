import Foundation
import SwiftUI

class RegisterformViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var fullnameText: String = ""
    @Published var youremailText: String = ""
    @Published var passwordText: String = ""
    @Published var passwordagainText: String = ""
}
