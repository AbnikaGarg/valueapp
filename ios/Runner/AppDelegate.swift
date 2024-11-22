import Flutter
import UIKit
import flutter_local_notifications
import workmanager

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
     FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
    GeneratedPluginRegistrant.register(with: registry)
  }
    GeneratedPluginRegistrant.register(with: self)
     WorkmanagerPlugin.registerBGProcessingTask(withIdentifier: "simpleTask")
     WorkmanagerPlugin.registerPeriodicTask(withIdentifier: "be.tramckrijte.workmanagerExample.iOSBackgroundAppRefresh", frequency: NSNumber(value: 20 * 60))
     
    if #available(iOS 10.0, *) {
  UNUserNotificationCenter.current().delegate = self as? UNUserNotificationCenterDelegate
}
WorkmanagerPlugin.setPluginRegistrantCallback { registry in
         GeneratedPluginRegistrant.register(with: registry)
       
           
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
