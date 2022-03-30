//
//  ViewController.swift
//  BillBoard
//
//  Created by 원동진 on 2022/03/17.
//
//startstudy
import UIKit

class ViewController: UIViewController,SendDataDelegate{
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VieController 뷰가 로드 되었다.")
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("VieController 뷰가 나타날 것이다.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("VieController 뷰가 나타났다.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VieController 뷰가 사라질 것이다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("VieController 뷰가 사라졌다.")
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController  else {return}
        viewController.modalPresentationStyle = .fullScreen
        //as? 다운캐스팅 할시 codepresentViewController 의 name프로퍼티에 접근가능 ,밑에도 동일
        viewController.name = "Gunter"
        viewController.delegate = self
        //전환된 화면으로 데이터전달가능
        self.present(viewController, animated: true, completion: nil)
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController
        else {return}
        self.navigationController?.pushViewController(viewController, animated: true)
        viewController.name = "Gunter"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //→전환할려는 뷰컨트롤러 instance 를 가져옴
    }
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
}

