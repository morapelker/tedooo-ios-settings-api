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

public struct NotificationSettings {
    
    public init(postNotifications: Bool) {
        self.postNotifications = postNotifications
    }
    
    
    public let postNotifications: Bool
}

public protocol SettingsApi {
 
    func fetchNotificationSettings() -> AnyPublisher<NotificationSettings, Error>
    
    func updateSettingItem(item: SettingItem, newValue: Bool) -> AnyPublisher<Any?, Error>
    func updateLanguage(toLanguage: String) -> AnyPublisher<Any?, Error>
}
