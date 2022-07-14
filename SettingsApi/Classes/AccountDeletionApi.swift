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

public struct AccountSettings {
    
    public init(lastSeen: Bool, localTime: Bool, liveTranslations: Bool, language: String, email: String) {
        self.lastSeen = lastSeen
        self.localTime = localTime
        self.liveTranslations = liveTranslations
        self.language = language
        self.email = email
    }
    
    
    public let lastSeen: Bool
    public let localTime: Bool
    public let liveTranslations: Bool
    public let language: String
    public let email: String
    
}

public protocol SettingsApi {
 
    func fetchNotificationSettings() -> AnyPublisher<NotificationSettings, Error>
    func fetchAccountSettings() -> AnyPublisher<AccountSettings, Error>
    
    func updatePassword(oldPassword: String, newPassword: String) -> AnyPublisher<String, NSError>
    func updateSettingItem(item: SettingItem, newValue: Bool) -> AnyPublisher<Any?, Error>
    func updateLanguage(toLanguage: String) -> AnyPublisher<Any?, Error>
    
    func deleteAccount() -> AnyPublisher<Any?, Never>
}
