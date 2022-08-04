import Foundation

public struct SegWitValidator: IAddressValidator {
    public func isValid(address: String) -> Bool {
        guard (try? SegWitBech32.decode(addr: address)) != nil else { return false }
        return true
    }
}
