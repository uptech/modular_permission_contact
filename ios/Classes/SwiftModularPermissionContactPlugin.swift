import Flutter
import UIKit

public class SwiftModularPermissionContactPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "modular_permission_contact", binaryMessenger: registrar.messenger())
    let instance = SwiftModularPermissionContactPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
