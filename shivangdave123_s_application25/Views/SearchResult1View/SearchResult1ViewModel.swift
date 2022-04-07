import Foundation
import SwiftUI

class SearchResult1ViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchproductText: String = ""
}
