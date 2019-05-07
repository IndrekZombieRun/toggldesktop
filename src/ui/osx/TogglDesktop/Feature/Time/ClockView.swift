//
//  ClockView.swift
//  TogglDesktop
//
//  Created by Nghia Tran on 5/6/19.
//  Copyright © 2019 Alari. All rights reserved.
//

import Cocoa

class ClockView: NSView {

    enum DisplayMode {
        case minute
        case hour12
        case hour24
    }

    // MARK: OUTLET

    @IBOutlet weak var minuteContainerView: NSView!

    // MARK: Variables

    private var timeInput: TimeInputView?
    private var displayMode: DisplayMode = . minute {
        didSet {
            layoutClock()
        }
    }

    // MARK: View Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func minuteBtnOnTap(_ sender: NSButton) {

    }

    @IBAction func hourBtnOnTap(_ sender: NSButton) {

    }

    func config(with timeInput: TimeInputView) {
        self.timeInput?.delegate = nil
        self.timeInput = timeInput
        self.timeInput?.delegate = self

        switch timeInput.currentSelection {
        case .hour:
            displayMode = .hour12
        case .minute:
            displayMode = .minute
        case .second:
            displayMode = .minute
        case .none:
            displayMode = .hour12
        }
    }
}

// MARK: Private

extension ClockView {

    fileprivate func initCommon() {

    }

    fileprivate func layoutClock() {

    }
}

// MARK: TimeInputViewDelegate

extension ClockView: TimeInputViewDelegate {

    func timeInputDidSelect(_ time: TimeData, with selection: TimeInputView.Selection) {
        
    }
}
