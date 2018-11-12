//
//  CalendarViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 17-10-23.
//  Copyright © 2017 Bandy. All rights reserved.
//

/*import UIKit
import JTAppleCalendar

class CalendarViewController: UIViewController {
    @IBOutlet weak var calendarView: JTAppleCalendarView!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var month: UILabel!
    
    let formatter = DateFormatter()
    
    let outsideMonthColor = UIColor(colorWithHexValue: 0x585a66)
    let MonthColor = UIColor.white
    let selectedMonthColor = UIColor.black
    let currentDateSelectedViewColor = UIColor(colorWithHexValue: 0x4e3f5d)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Start Calendar at the D-DAY
        calendarView.scrollToDate(Date(), animateScroll: false)
        calendarView.selectDates([ Date() ])
        
        setupCalendarView()
    }
    
    func setupCalendarView() {
        calendarView.minimumLineSpacing = 0
        calendarView.minimumInteritemSpacing = 0
    
        calendarView.visibleDates { (visibleDates) in
            self.setupViewsOfCalendar(from: visibleDates)
        }
    }
    
    func setupViewsOfCalendar(from visibleDates: DateSegmentInfo) {
        let date = visibleDates.monthDates.first!.date
        
        self.formatter.dateFormat = "yyyy"
        self.year.text = self.formatter.string(from: date)
        
        self.formatter.dateFormat = "MMMM"
        self.month.text = self.formatter.string(from: date)
    }
    
    func HandleCelltextColor(view: JTAppleCell?, cellState: CellState) {
        guard let validCell = view as? CustomCalendar else {
            return
        }
        
        if cellState.isSelected {
            validCell.dateLabel.textColor = selectedMonthColor
        } else {
            if cellState.dateBelongsTo == .thisMonth {
                validCell.dateLabel.textColor = MonthColor
            } else {
                validCell.dateLabel.textColor = outsideMonthColor
            }
        }
    }
    
    func HandleCellSelected(view: JTAppleCell?, cellState: CellState) {
        guard let validCell = view as? CustomCalendar else {return}
        if validCell.isSelected {
            validCell.selectedView.isHidden = false
        } else {
            validCell.selectedView.isHidden = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension CalendarViewController: JTAppleCalendarViewDataSource {
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        formatter.dateFormat = "yyyy MM dd"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        
        let startDate = formatter.date(from: "1995 01 01")!
        let endDate = formatter.date(from: "2100 12 01")!
        
        let parameters = ConfigurationParameters(startDate: startDate, endDate: endDate)
        return parameters
    }

}

/*extension CalendarViewController: JTAppleCalendarViewDelegate {
    //Display the cell
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCalendar", for: indexPath) as! CustomCalendar
        
        cell.dateLabel.text = cellState.text
        
        HandleCellSelected(view: cell, cellState: cellState)
        HandleCelltextColor(view: cell, cellState: cellState)
        
        return cell
    }
    
    func calendar(_ calendar: JTAppleCalendarView, didSelectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        HandleCellSelected(view: cell, cellState: cellState)
        HandleCelltextColor(view: cell, cellState: cellState)

    }
    
    func calendar(_ calendar: JTAppleCalendarView, didDeselectDate date: Date, cell: JTAppleCell?, cellState: CellState) {
        HandleCellSelected(view: cell, cellState: cellState)
        HandleCelltextColor(view: cell, cellState: cellState)

    }
    
    func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
        setupViewsOfCalendar(from: visibleDates)
    }
}*/

extension UIColor {
        convenience init(colorWithHexValue value: Int, alpha:CGFloat = 1.0) {
            self.init(
                red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(value & 0x0000FF) / 255.0,
                alpha: alpha
            )
        }
}
*/
