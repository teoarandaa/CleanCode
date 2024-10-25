//
//  ScanView.swift
//  CleanCode
//
//  Created by Teo Aranda Páez on 25/10/24.
//

import SwiftUI
import VisionKit

struct ScanView: UIViewControllerRepresentable {
    @ObservedObject var scanProvider: ScanProvider
    
    //MARK: Configuration for scanner controller
    func makeUIViewController(context: Context) -> DataScannerViewController {
        let dataScannerViewController = DataScannerViewController(recognizedDataTypes: [.text()],
                                                                  qualityLevel: .fast,
                                                                  isHighlightingEnabled: true)
        dataScannerViewController.delegate = scanProvider
        try? dataScannerViewController.startScanning()
        return dataScannerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType,
                                context: Context) {
    }
}

//MARK: Saves the text scanned and shows an error when is unable to scan the text
final class ScanProvider: NSObject, DataScannerViewControllerDelegate, ObservableObject {
    @Published var text: String = ""
    @Published var error: DataScannerViewController.ScanningUnavailable?
    @Published var showSheet: Bool = false
    
    //MARK: Transcripts the text. Ignores the barcodes and others
    func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
        switch item {
        case .text(let recognizedText):
            self.text = recognizedText.transcript
            self.showSheet.toggle()
        case .barcode(_):
            break
        @unknown default:
            break
        }
    }
    
    //MARK: Catches the error to show it in the screen
    func dataScanner(_ dataScanner: DataScannerViewController,
                     becameUnavailableWithError error: DataScannerViewController.ScanningUnavailable) {
        self.error = error
        print(error)
    }
}
