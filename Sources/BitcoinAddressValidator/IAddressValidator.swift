import Foundation

public protocol IAddressValidator {
    func isValid(address: String) -> Bool
}
