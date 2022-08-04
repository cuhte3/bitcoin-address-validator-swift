import Foundation

public struct BitcoinAddressValidator {
    private let validators: [IAddressValidator] = [Base58Validator(), SegWitValidator()]
    
    public init() {}
    
    public func isValid(address: String) -> Bool {
        validators.first(where: { $0.isValid(address: address )}) != nil
    }
}
