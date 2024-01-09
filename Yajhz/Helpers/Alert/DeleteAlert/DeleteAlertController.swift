//
//  trackOrderController.swift
//  karami
//
//  Created by kariman eltawel on 21/06/2023.
//

import UIKit

class DeleteAlertController: UIViewController {
    
    @IBOutlet weak var dismassView: UIView!
    @IBOutlet weak var alretView: UIView!
    @IBOutlet weak var alertMsg: UILabel!
    @IBOutlet weak var deleteBtn: UIButton!
    var deletePressed: (()->())?
    var alertTitle:String?
    var msg:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        deleteBtn.setTitle(alertTitle ?? "", for: .normal)
        alertMsg.text = msg ?? ""
        //        navigationController?.navigationBar.tintColor = .black
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        dismassView.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: alretView)
        
        if !alretView.bounds.contains(location) {
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func exitPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func deletePressed(_ sender: Any) {
        deletePressed?()
        dismiss(animated: true, completion: nil)
    }
    
}
