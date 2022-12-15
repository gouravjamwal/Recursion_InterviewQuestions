
import Foundation

/*
 Link: https://practice.geeksforgeeks.org/problems/tower-of-hanoi-1587115621/1
 */

func solve(noOfDisks: Int, sourceRod: String, destinationRod: String, helperRod: String) {
    if noOfDisks == 1 {
        moveDisk(disk: noOfDisks, source: sourceRod, destination: destinationRod, helper: helperRod)
        return
    }
    solve(noOfDisks: noOfDisks - 1, sourceRod: sourceRod, destinationRod: helperRod, helperRod: destinationRod);
    moveDisk(disk: noOfDisks,source: sourceRod,destination: destinationRod,helper: helperRod);
    solve(noOfDisks: noOfDisks - 1, sourceRod: helperRod, destinationRod: destinationRod, helperRod: sourceRod);
}

func moveDisk(disk: Int, source: String, destination: String, helper: String) {
    print("Move Disk\(disk) from Source\(source) to Destination\(destination) with Helper\(helper)")
}

solve(noOfDisks: 3, sourceRod: "1", destinationRod: "2", helperRod: "3")
