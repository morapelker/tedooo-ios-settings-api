import Combine

public enum SettingItem {
    case lastSeen
    case liveTranslations
    case postNotifications
    case localTime
}

public protocol AccountDeletionApi {
    
    func deleteAccount() -> AnyPublisher<Any?, Never>
    
}

public protocol SettingsApi {
    func updateSettingItem(item: SettingItem, newValue: Bool) -> AnyPublisher<Any?, Error>
    func updateLanguage(toLanguage: String) -> AnyPublisher<Any?, Error>
}
