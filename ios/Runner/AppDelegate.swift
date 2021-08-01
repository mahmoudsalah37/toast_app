import UIKit
import Flutter
import GoogleMaps
//import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
//    FirebaseApp.configure()
    //    GeneratedPluginRegistrant.registfluer(with: self)
    GeneratedPluginRegistrant.register(with: self)
     GMSServices.provideAPIKey("AIzaSyDhU_qyEBEE3KO2FAHDkrAtSqMNAqIM8EU")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
