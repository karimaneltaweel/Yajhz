//
//  HomeViewController.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTable: UITableView!{
        didSet{
            homeTable.register(UINib(nibName: "HeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderTableViewCell")
        }
    }
    
    @IBOutlet weak var userNameLB: UILabel!
    @IBOutlet weak var locationLB: UILabel!
    //---------------home data-------------------
    var categoryData:HomeCategories?
    var popularData:HomePopular?
    var trandingData:HomeTranding?
    //------navigation buttons------------
    let cartBT = UIButton()
    let listBT = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationAppearence()
        navigationItem.title = "Home"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getUserProfile()
        getHomeCategories()
        getHomeTranding()
        getHomePopular()
    }

}
