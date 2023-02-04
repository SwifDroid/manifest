//
//  Manifest.swift
//  Manifest
//
//  Created by Mihael Isaev on 28.07.2021.
//

import Foundation

public class Manifest {
    var package = ""
    var versionCode = ""
    var versionName = ""
    var installLocation: InstallLocation?
    
    public init () {}
    
    /// A full Java-language-style package name for the Android app.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/manifest-element#package)
    @discardableResult
    public func package(_ value: String) -> Self {
        package = value
        return self
    }
    
    /// An internal version number.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/manifest-element#vcode)
    @discardableResult
    public func versionCode(_ value: String) -> Self {
        versionCode = value
        return self
    }
    
    /// The version number shown to users.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/manifest-element#vname)
    @discardableResult
    public func versionName(_ value: String) -> Self {
        versionName = value
        return self
    }
    
    public enum InstallLocation: String, Codable {
        case internalOnly
        case auto
        case preferExternal
    }
    
    /// The default install location for the app.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/manifest-element#install)
    @discardableResult
    public func installLocation(_ value: InstallLocation) -> Self {
        installLocation = value
        return self
    }
    
    var application: Application?
    
    @discardableResult
    public func application(_ value: Application) -> Self {
        application = value
        return self
    }
    
    var compatibleScreens: [Screen] = []
    
    /// Specifies each screen configuration with which the application is compatible.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/compatible-screens-element)
    @discardableResult
    public func compatibleScreens(_ screens: Screen...) -> Self {
        compatibleScreens(screens)
    }
    
    /// Specifies each screen configuration with which the application is compatible.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/compatible-screens-element)
    @discardableResult
    public func compatibleScreens(_ screens: [Screen]) -> Self {
        compatibleScreens = screens
        return self
    }
    
    var instrumentation: Instrumentation?
    
    /// Declares an `Instrumentation` class that enables you to monitor an application's interaction with the system.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/instrumentation-element)
    @discardableResult
    public func instrumentation(_ value: Instrumentation) -> Self {
        instrumentation = value
        return self
    }
    
    var permissions: [Permission] = []
    
    /// Declares a security permission that can be used to limit access to specific components or features of this or other applications.
    ///
    /// [Learn more](https://developer.android.com/guide/topics/manifest/permission-element)
    @discardableResult
    public func permission(_ value: Permission) -> Self {
        permissions.append(value)
        return self
    }
    
    var permissionGroups: [PermissionGroup] = []
    
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
//
//    /// ___
//    ///
//    /// [Learn more](___)
//    @discardableResult
//    public func ___(_ value: ___) -> Self {
//
//        return self
//    }
}
