//
// AppDelegate.swift
// Created by Igor Tarasenko on 22/11/17
// Copyright © 2017 Igor Tarasenko
// Licensed under the MIT license, see LICENSE file
//

import UIKit
import RxSwift
import RxCocoa

@objc(AppDelegate)
public class AppDelegate: UIResponder, UIApplicationDelegate {

    public var window: UIWindow?
    let pub = PublishSubject<Void>()

    public func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        pub.bind { _ in
            print("Wow")
        }
        pub.onNext(())
        print("Test")
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(
            navigationBarClass: nil,
            toolbarClass: nil
        )
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
        return true
    }
}

