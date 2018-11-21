//
//  TutorialThirdViewController.swift
//  CospaFramework
//
//  Created by Fujiki Takeshi on 2018/11/21.
//  Copyright © 2018 takecian. All rights reserved.
//

import UIKit

final public class TutorialThirdViewController: UIViewController {

    public static func make() -> TutorialThirdViewController {
        let vc = UIStoryboard(name: "Tutorial", bundle: Bundle(for: self)).instantiateViewController(withIdentifier: "TutorialThirdViewController") as! TutorialThirdViewController
        return vc
    }

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
