//
//  DetailView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit

class DetailView:UIViewController {
    
    private(set) lazy var headerView:detailView = {
       let view = detailView()
       view.roundCorners(.allCorners, radius:20)
       view.applyShadowOnView(view)
       view.backgroundColor = .white
       return view
    }()
    
    
    private(set) lazy var main:ViewMain = {
       let view = ViewMain()
       view.roundCorners(.allCorners, radius:20)
       return view
    }()
    
    
    
    
    
    let segmentControl:UISegmentedControl = {
        let view = UISegmentedControl(items:["Details", "Hourly", "10-Days"])
        view.backgroundColor = .white
        view.selectedSegmentIndex = 0
        view.selectedSegmentTintColor = UIColor.systemBlue
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.systemBlue.cgColor
        view.addTarget(self, action:#selector(handleTapped), for:.valueChanged)
        return view
    }()
    

    
    @objc  func handleTapped(sender:UISegmentedControl) {
        
        self.tableView.reloadData()
    }
    
    
    

    private(set) lazy var tableView:UITableView = {
       let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(FirstCell.self , forCellReuseIdentifier:"firstCell")
        view.register(SecondCell.self , forCellReuseIdentifier:"secondCell")
       return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupSubviews()
    }
}

extension DetailView:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 60))
               headerView.backgroundColor = .purple
               headerView.addSubview(main)
               main.snp.makeConstraints { make in
                   make.edges.equalToSuperview().inset(5)
               }
            
            return headerView
           case 1:
               return UIView()
           default:
                return UIView()
               
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
               return 120
           case 1:
               return 0
           //Add other cases here
           default:
               return 0
           }
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
               return 5
           case 1:
               return 10
           default:
               return 0
           }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
               return tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)  as! FirstCell //Do your custom handling whatever required.
           case 1:
               return tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as! SecondCell
           //Add other cases here
           default:
               return UITableViewCell()
           }
    }
}


