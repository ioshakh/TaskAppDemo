//
//  DetailView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import UIKit

class DetailView:UIViewController {
    
    var firstItems: ViewModel?
    var secondItems:  SecondViewModel?
    var thirdItems: thirdViewModel?
    
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
        view.separatorStyle = .none
        view.register(FirstCell.self , forCellReuseIdentifier:"firstCell")
        view.register(SecondCell.self , forCellReuseIdentifier:"secondCell")
        view.register(thirdCell.self, forCellReuseIdentifier:"thirdCell")
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupSubviews()
        firstItems =  ViewModel()
        secondItems =   SecondViewModel()
        thirdItems = thirdViewModel()
    }
}

extension DetailView:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 60))
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
           case 2:
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
               return (firstItems?.items.count)!
           case 1:
               return (secondItems?.secondItem.count)!
           case 2:
               return (thirdItems?.thirdItem.count)!
           default:
               return 0
           }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let selectedIndex = self.segmentControl.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
            
              let cell =  tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)  as! FirstCell
               
               let index = firstItems?.items[indexPath.row]
                
               cell.configure(with:index!)
               
               return cell
               
           case 1:
               
               let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as! SecondCell
               
                let second = secondItems?.secondItem[indexPath.row]
               
                cell.configurewith(with:second!)
                
                
                return cell
           case 2:
               
               let cell = tableView.dequeueReusableCell(withIdentifier: "thirdCell", for: indexPath) as! thirdCell
               
               let third = thirdItems?.thirdItem[indexPath.row]
               
                cell.threeConfigure(with: third!)
               
               if indexPath.row == 0 {
                   cell.weeklabel.textColor = UIColor.systemBlue
               }
               
               switch indexPath.row {
                   case 0 :
                   cell.weekImage.tintColor = UIColor.orange
                   case 1 :
                   cell.weekImage.tintColor = UIColor.gray
                   case 2 :
                   cell.weekImage.tintColor = UIColor.systemBlue
                   case 3 :
                   cell.weekImage.tintColor = UIColor.purple
                   case 4 :
                   cell.weekImage.tintColor = UIColor.blue
                   case 5 :
                   cell.weekImage.tintColor = UIColor.gray
                   case 6 :
                   cell.weekImage.tintColor = UIColor.blue
                   case 7 :
                   cell.weekImage.tintColor = UIColor.orange
                   case 8 :
                   cell.weekImage.tintColor = UIColor.blue
                   case 10 :
                   cell.weekImage.tintColor = UIColor.orange
               default:
                   return cell
               }
            
                return cell
               
           default:
               return UITableViewCell()
           }
    }
}



