//
//  CodePresentViewController.swift
//  BillBoard
//
//  Created by 원동진 on 2022/03/30.
//

import UIKit
protocol SendDataDelegate : AnyObject{
    func sendData(name: String)
}
class CodePresentViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    weak var delegate : SendDataDelegate?
    //weak deleate를 사용할때 delegate 변수는 weak 를 붙여줘야한다. 안붙여주게되면 강한 순환참조가 걸려서 메모리누수가 생길수있다.
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
