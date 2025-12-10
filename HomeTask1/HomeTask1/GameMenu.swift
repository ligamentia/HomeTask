import Foundation

enum GameMenu: Int, CaseIterable {
    case startNewGame = 1
    case showHistory = 2
    case exit = 3

    var name: String {
        switch self {
        case .startNewGame:
            "|1. Start new game |"
        case .showHistory:
            "|2. Show history |  "
        case .exit:
            "|3. Exit |"
        }
    }
}
