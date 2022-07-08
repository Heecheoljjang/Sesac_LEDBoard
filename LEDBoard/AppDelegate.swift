//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by HeecheolYoon on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        sleep(2)
        return true
    }
    
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // 백그라운드 들어갈때
        // 예를 들어 melon, youtube - 사용자 프리미엄 결제했으면 play, 아니면 일시정지
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // active상태로 돌아온 상태
        // youtube - 결제 안 한 사람에게 팝업창 띄우기
        // kakaotalk - 비밀번호
        // 금융앱 -
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

