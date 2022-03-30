//
//  SeguePushViewController.swift
//  BillBoard
//
//  Created by 원동진 on 2022/03/29.
//

import UIKit

class SeguePushViewController: UIViewController {
    

    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        
    }
    //    override func viewWillAppear(_ animated: Bool) {
    //        super.viewWillAppear(animated)
    //        print("VieController 뷰가 나타날 것이다.")
    //    }
    //    override func viewDidAppear(_ animated: Bool) {
    //        super.viewDidAppear(animated)
    //        print("VieController 뷰가 나타났다.")
    //    }
    //    override func viewWillDisappear(_ animated: Bool) {
    //        super.viewWillDisappear(animated)
    //        print("VieController 뷰가 사라질 것이다.")
    //    }
    //    override func viewDidDisappear(_ animated: Bool) {
    //        super.viewDidDisappear(animated)
    //        print("VieController 뷰가 사라졌다.")
    //    }
    //    @IBAction func tapCodePresentButton(_ sender: UIButton) {
    //        guard let viewController =
    //                self.storyboard?.instantiateViewController(identifier: "CodePresentViewController")  else {return}
    //        viewController.modalPresentationStyle = .fullScreen
    //        self.present(viewController, animated: true, completion: nil)
    //
    //    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
