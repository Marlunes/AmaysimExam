//
//  SubscriptionViewController.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 06/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class SubscriptionViewController: UIViewController {

    @IBOutlet var viewModel: SubscriptionViewModel!
    @IBOutlet var helper: SubscriptionHelper!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var dataRemainingLbl: UILabel!
    @IBOutlet weak var planNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initializeView(){
        
        nameLbl.text = "Hi \(viewModel.getUserInfoFullName())!"
        
        let subscription = viewModel.getUserPlanInfo(type: .subscriptions)
        dataRemainingLbl.text = "\(helper.convertToGB(mb: subscription?.attributes.includeddata)) GB"
        
        let product = viewModel.getUserPlanInfo(type: .products)
        planNameLbl.text = helper.createPlanName(data: product)
        
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
