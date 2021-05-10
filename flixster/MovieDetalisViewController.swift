//
//  MovieDetalisViewController.swift
//  flixster
//
//  Created by Dewan Sunnah on 5/10/21.
//

import UIKit
import AlamofireImage

class MovieDetalisViewController: UIViewController {
    
    @IBOutlet weak var backDropView: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie : [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string : baseURL + posterPath)
        posterView.af_setImage(withURL: posterURL!)
        
        let backDropPath = movie["backdrop_path"] as! String
        let backDropURL = URL(string : "https://image.tmdb.org/t/p/w780" + backDropPath)
       
    
        backDropView.af_setImage(withURL: backDropURL!)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
