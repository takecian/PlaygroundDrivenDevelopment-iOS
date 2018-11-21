//
//  TutorialPageViewController.swift
//  CospaFramework
//
//  Created by Fujiki Takeshi on 2018/11/21.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

public class TutorialPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    public static func make() -> TutorialPageViewController {
        let vc = UIStoryboard(name: "Tutorial", bundle: Bundle(for: self)).instantiateViewController(withIdentifier: "TutorialPageViewController") as! TutorialPageViewController
        return vc
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([TutorialFirstViewController.make()], direction: .forward, animated: true, completion: nil)
        dataSource = self
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: TutorialFirstViewController.self) {
            return nil
        } else if viewController.isKind(of: TutorialSecondViewController.self) {
            return TutorialFirstViewController.make()
        } else {
            return TutorialSecondViewController.make()
        }
    }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController.isKind(of: TutorialFirstViewController.self) {
            return TutorialSecondViewController.make()
        } else if viewController.isKind(of: TutorialSecondViewController.self) {
            return TutorialThirdViewController.make()
        } else {
            return nil
        }

    }

}
