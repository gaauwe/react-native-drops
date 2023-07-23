import Foundation
import UIKit
import AVFoundation
import Drops

@objc(RNDrops)
class RNDrops: NSObject {
    @objc static func requiresMainQueueSetup() -> Bool { return true }
    @objc public func show(_ options: Dictionary<String, String>) {
        let buttonIcon = options["action"] != nil ? UIImage(systemName: options["action"]!) : nil

        let drop = Drop(
            title: options["title"]!,
            subtitle: options["subtitle"]!,
            icon: UIImage(systemName: options["icon"]!)?.withRenderingMode(.alwaysOriginal),
            action: options["action"] != nil ? .init(icon: buttonIcon, handler: {
                print("Drop tapped")
                Drops.hideCurrent()
            }) : nil,
            position: .top,
            duration: 3.0
        )
        Drops.show(drop)
    }
}
