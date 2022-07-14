import Combine

public protocol AccountDeletionApi {
    
    func deleteAccount() -> AnyPublisher<Any?, Never>
    
}
