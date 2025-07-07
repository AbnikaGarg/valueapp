import Flutter
import UIKit
import flutter_local_notifications
import workmanager
import UserNotifications

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      let controller = window?.rootViewController as! FlutterViewController
              let alarmChannel = FlutterMethodChannel(name: "com.example.alarm",
                                                      binaryMessenger: controller.binaryMessenger)

              alarmChannel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
                  if call.method == "scheduleAlarm" {
                                  if let args = call.arguments as? [String: Any],
                                     let hour = args["hour"] as? Int,
                                     let minute = args["minute"] as? Int {
                                      self.scheduleAlarm(hour: hour, minute: minute)
                                      result("Alarm scheduled for \(hour):\(minute)")
                                  } else {
                                      result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments received", details: nil))
                                  }
                              } else {
                                  result(FlutterMethodNotImplemented)
                              }
              }

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
    func scheduleAlarm(hour: Int, minute: Int) {
            let center = UNUserNotificationCenter.current()
        print("ss scheduling sss")
            // Clear existing notifications
            center.removeAllPendingNotificationRequests()
            
            // Request permission
            center.requestAuthorization(options: [.alert, .sound]) { granted, error in
                if granted {
                    let snoozeAction = UNNotificationAction(identifier: "SNOOZE_ACTION", title: "Snooze", options: [])
                                let category = UNNotificationCategory(identifier: "ALARM_CATEGORY",
                                                                      actions: [snoozeAction],
                                                                      intentIdentifiers: [],
                                                                      options: [])
                                center.setNotificationCategories([category])
                    let content = UNMutableNotificationContent()
                    content.title = "Alarm"
                    content.body = "It's 9 50 am! Time for your alarm."
                    if let soundURL = Bundle.main.url(forResource: "ahmadalnafeesfulladhan", withExtension: "aiff") {
                                   content.sound = UNNotificationSound(named: UNNotificationSoundName(soundURL.lastPathComponent))
                               } else {
                                   print("Error: ganesh.mp3 file not found in Resources.")
                               }
                    content.categoryIdentifier = "ALARM_CATEGORY"
                    var dateComponents = DateComponents()
                    dateComponents.hour = hour
                    dateComponents.minute = minute

                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
                    let request = UNNotificationRequest(identifier: "AlarmNotification", content: content, trigger: trigger)

                    center.add(request) { error in
                        if let error = error {
                            print("Error scheduling notification: \(error)")
                        }
                    }
                } else {
                    print("Permission denied: \(error?.localizedDescription ?? "unknown error")")
                }
            }
        }
    }
