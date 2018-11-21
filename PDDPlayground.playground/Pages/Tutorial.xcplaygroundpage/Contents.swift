//: [Previous](@previous)

import UIKit
import PlaygroundSupport
import PDDFramework

func display(device: Device, orientation: Orientation) {
    let vc = TutorialPageViewController.make()
    let (parent, _) = playgroundControllers(device: device, orientation: .portrait, child: vc)
    PlaygroundPage.current.liveView = parent
}

display(device: .phone5_5inch, orientation: .portrait)
display(device: .phone4_7inch, orientation: .portrait)
display(device: .phone4inch, orientation: .portrait)

//: [Next](@next)
