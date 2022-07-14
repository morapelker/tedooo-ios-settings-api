import Combine

public enum SettingItem {
    case lastSeen
    case liveTranslations
    case postNotifications
    case localTime
}

public struct NotificationSettings {
    
    public init(postNotifications: Bool) {
        self.postNotifications = postNotifications
    }
    
    public let postNotifications: Bool
}

public protocol SettingsApi {
 
    func fetchNotificationSettings() -> AnyPublisher<NotificationSettings, Error>
    
    func updatePassword(oldPassword: String, newPassword: String) -> AnyPublisher<Any?, NSError>
    func updateSettingItem(item: SettingItem, newValue: Bool) -> AnyPublisher<Any?, Error>
    func updateLanguage(toLanguage: String) -> AnyPublisher<Any?, Error>
    
    func deleteAccount() -> AnyPublisher<Any?, Never>
}
