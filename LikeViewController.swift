//
//  LikeViewController.swift
//  いいねトリガー
//
//  Created by Yusuke Mizutani on 2020/02/19.
//  Copyright © 2020 Yusuke Mizutani. All rights reserved.
//

import UIKit



class LikeViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var Givenlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = String(self.UserGet)
        self.Givenlabel.text = String(self.UserGiven)
    }
    
    var UserGiven :Float = 0.0
    var UserGet :Float = 0.0
    var i :Int = 1
    var k :Int = 1
    var j :Int = 1
    
    
    @IBAction func ButtonAction(_ sender: Any) {
        
        //一人いいねは5回まで
        if(self.i<=5){
                   
            self.UserGet = self.UserGet + Float(3 * pow(1/2,Float(self.k-1)))
            self.i = self.i + 1
            self.k = self.k + 1
            self.label.text = String(self.UserGet)
    
        //目利きメゾットとしていいねを押した写真のいいねが３０以上になったらトークンを加算するロジックは可能
         }
        
        /*if(AWSMobileClient.default().userID == PostUserID){*/
            
        self.UserGiven = self.UserGiven -
            Float(1*pow(1/2,Float((0.05*Float(self.j-1)))))+1.5
        self.j = self.j+1
        self.Givenlabel.text = String(self.UserGiven)
        /*}*/
        
    }
    
    
}
