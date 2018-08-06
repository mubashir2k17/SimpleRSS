//
//  SimpleRSSVC.swift
//  SimpleRSS
//
//  Created by Mubashir on 05/08/2018.
//  Copyright © 2018 AsadJamil. All rights reserved.
//

import UIKit

class SimpleRSSVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension SimpleRSSVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}
