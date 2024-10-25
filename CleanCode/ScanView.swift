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
    
    func makeUIViewController(context: Context) -> DataScannerViewController {
        let dataScannerViewController = DataScannerViewController(recognizedDataTypes: [.text()],
                                                                  qualityLevel: .accurate,
                                                                  isHighlightingEnabled: true)
        dataScannerViewController.delegate = scanProvider
        try? dataScannerViewController.startScanning()
        return dataScannerViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType,
                                context: Context) {
        
    }
}

final class ScanProvider: NSObject, DataScannerViewControllerDelegate, ObservableObject {
    @Published var text: String = ""
    @Published var error: DataScannerViewController.ScanningUnavailable?
    @Published var showSheet: Bool = false
    
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
    
    func dataScanner(_ dataScanner: DataScannerViewController,
                     becameUnavailableWithError error: DataScannerViewController.ScanningUnavailable) {
        self.error = error
        print(error)
    }
}
