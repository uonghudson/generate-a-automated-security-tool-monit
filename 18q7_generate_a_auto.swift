//
//  Automated Security Tool Monitor
//  18q7_generate_a_auto.swift
//  Created by [Your Name] on 2023-02-20.
//

import Foundation

// Global Variables
let monitoredSystems: [String] = ["System1", "System2", "System3"]
let securityThreshold: Int = 50
var systemStatus: [String: Int] = [:]

// Function to monitor system status
func monitorSystemStatus() {
    for system in monitoredSystems {
        let status = Int.random(in: 0...100)
        systemStatus[system] = status
        print("Monitoring \(system): \(status)%")
    }
}

// Function to evaluate system security
func evaluateSystemSecurity() {
    for (system, status) in systemStatus {
        if status < securityThreshold {
            print("Security Alert: \(system) is vulnerable!")
        } else {
            print("System \(system) is secure.")
        }
    }
}

// Main function
func main() {
    while true {
        monitorSystemStatus()
        evaluateSystemSecurity()
        sleep(10) // sleep for 10 seconds
    }
}

main()