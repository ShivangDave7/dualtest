import Foundation
import SwiftUI

class AddAddressViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var enterthecountText: String = ""
    @Published var enterthefirstText: String = ""
    @Published var enterthelastText: String = ""
    @Published var enterthestreeText: String = ""
    @Published var enterthestreeText1: String = ""
    @Published var enterthecityText: String = ""
    @Published var enterthestateText: String = ""
    @Published var enterthezipcText: String = ""
    @Published var enterthephoneText: String = ""
}
