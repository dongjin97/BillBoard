//
//  SuguePresentViewController.swift
//  BillBoard
//
//  Created by 원동진 on 2022/03/29.
//

import UIKit

class SuguePresentViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
