import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var youremailText: String = ""
    @Published var passwordText: String = ""
}
