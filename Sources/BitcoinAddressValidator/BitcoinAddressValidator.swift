import Foundation

public struct BitcoinAddressValidator {
    public init() {}
    
    public static func isValid(address: String) -> Bool {
        [
            Base58Validator() as IAddressValidator,
            SegWitValidator() as IAddressValidator
        ]
            .first(where: { $0.isValid(address: address )}) != nil
    }
}
