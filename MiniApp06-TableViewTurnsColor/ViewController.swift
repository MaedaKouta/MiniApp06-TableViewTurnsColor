//
//  ViewController.swift
//  MiniApp06-TableViewTurnsColor
//
//  Created by 前田航汰 on 2022/02/17.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var num = 0
    private var nums: [Int] =  [0]

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0 ..< 200 {
            num += 10
            nums.append(num)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""
        
        if indexPath.row % 5 == 0{
            identifier = "cell1"
        } else {
            identifier = "cell2"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)!
        cell.textLabel?.text = String(nums[indexPath.row])
        return cell
    }

}

