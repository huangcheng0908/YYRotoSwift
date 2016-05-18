//
//  ViewController.swift
//  YYRotoSwift
//
//  Created by mac on 16/5/18.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func tap(sender: UIButton)
    {
        var rotoView:YYRoto = YYRoto()
        rotoView = YYRoto.instantiateFromNib()
        rotoView.show()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

