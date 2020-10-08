//
//  SecretConstants.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 30.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation

struct SecretConstants {

    let salt = "Demo salt string"

    let RakutenAdvertisingAttributionKey: [UInt8] = [105, 72, 64, 66, 13, 49, 36, 43, 61, 110, 83, 38, 33, 40, 78, 55, 22, 44, 59, 46, 116, 54, 65, 39, 49, 121, 94, 89, 95, 68, 67, 109, 9, 44, 36, 37, 107, 34, 40, 46, 53, 97, 56, 55, 51, 14, 43, 38, 53, 33, 56, 88, 16, 38, 45, 52, 91, 19, 20, 12, 43, 61, 37, 41, 113, 74, 3, 3, 87, 58, 55, 35, 39, 115, 61, 64, 59, 8, 34, 13, 11, 83, 84, 41, 24, 64, 17, 8, 12, 67, 21, 18, 51, 15, 59, 47, 78, 43, 66, 7, 78, 75, 3, 59, 59, 115, 10, 36, 24, 88, 12, 76, 107, 61, 40, 38, 102, 31, 4, 57, 7, 69, 4, 48, 37, 5, 25, 35, 6, 10, 32, 29, 19, 3, 40, 34, 45, 119, 50, 12, 7, 33, 10, 44, 1, 17, 12, 42, 16, 31, 41, 32, 77, 86, 6, 12, 39, 60, 69, 44, 2, 111, 38, 58, 89, 23, 16, 84, 36, 99, 5, 63, 63, 25, 23, 63, 55, 42, 62, 27, 101, 34, 6, 3, 23, 78, 67, 30, 16, 95, 36, 15, 33, 36, 25, 53, 73, 5, 27, 62, 45, 79, 3, 48, 55, 93, 23, 35, 3, 78, 38, 33, 16, 53, 0, 95, 14, 71, 30, 31, 61, 30, 15, 35, 30, 1, 103, 27, 68, 63, 74, 37, 51, 108, 60, 16, 25, 2, 43, 85, 51, 15, 85, 43, 116, 61, 6, 94, 1, 113, 65, 17, 55, 4, 42, 37, 37, 84, 55, 86, 67, 20, 12, 20, 12, 102, 50, 4, 66, 47, 9, 95, 5, 36, 4, 42, 120, 74, 82, 28, 36, 90, 23, 67, 64, 43, 36, 48, 115, 3, 20, 101, 75, 56, 57, 36, 30, 74, 4, 60, 93, 13, 41, 47, 48, 4, 27, 7, 113, 16, 36, 2, 30, 71, 65, 2, 40, 92, 6, 34, 23, 43, 6, 12, 71, 30, 42, 43, 28, 119, 68, 91, 36, 2, 61, 34, 8, 63, 5, 61, 118, 27, 39, 8, 7, 122, 34, 29, 58, 47, 6, 15, 114, 55, 53, 42, 42, 48, 16, 61, 67, 120, 66, 6, 17, 32, 47, 21, 119, 3, 89, 63, 102, 23, 8, 88, 50, 120, 22, 13, 51, 17, 15, 6, 19, 52, 42, 21, 86, 48, 36, 27, 3, 69, 34, 34, 32, 15, 22, 4, 37, 34, 10, 91, 22, 58, 7, 2, 13, 86, 18, 30, 33, 51, 3, 82, 14, 52, 10, 37, 17, 121, 22, 45, 71, 112, 10, 35, 60, 39, 45, 81, 19, 85, 56, 45, 106, 41, 56, 94, 21, 23, 53, 34, 24, 61, 37, 20, 6, 12, 11, 6, 108, 52, 53, 34, 7, 82, 24, 59, 67, 43, 57, 63, 51, 9, 2, 54, 110, 10, 46, 67, 50, 87, 10, 21, 32, 39, 43, 35, 30, 54, 8, 25, 111, 24, 107, 26, 34, 71, 43, 28, 3, 14, 24, 46, 9, 93, 7, 12, 103, 75, 14, 22, 6, 122, 11, 1, 49, 89, 5, 41, 118, 1, 63, 14, 81, 7, 86, 10, 50, 76, 36, 71, 11, 25, 33, 17, 117, 0, 57, 38, 110, 34, 14, 33, 14, 23, 3, 34, 39, 51, 24, 33, 41, 47, 57, 0, 87, 65, 8, 102, 24, 69, 17, 33, 30, 51, 47, 51, 34, 82, 44, 45, 85, 59, 20, 63, 2, 110, 30, 67, 11, 91, 2, 47, 39, 54, 3, 86, 82, 11, 51, 88, 7, 65, 71, 67, 42, 80, 37, 35, 2, 80, 35, 53, 88, 61, 5, 30, 0, 87, 10, 1, 56, 13, 23, 94, 8, 1, 29, 26, 86, 56, 83, 94, 126, 106, 41, 67, 25, 7, 33, 41, 62, 2, 84, 37, 109, 30, 18, 45, 54, 75, 21, 29, 39, 7, 62, 94, 50, 14, 31, 22, 67, 6, 40, 88, 57, 80, 34, 30, 4, 80, 58, 2, 42, 11, 90, 34, 109, 28, 10, 88, 35, 102, 16, 28, 25, 46, 39, 80, 51, 43, 95, 60, 65, 7, 47, 67, 68, 42, 43, 67, 68, 4, 47, 34, 19, 32, 14, 40, 82, 29, 24, 6, 2, 65, 67, 13, 36, 92, 22, 19, 9, 47, 9, 68, 81, 1, 50, 10, 56, 17, 5, 71, 10, 37, 86, 9, 6, 8, 7, 34, 110, 70, 23, 58, 95, 80, 35, 36, 0, 40, 95, 53, 30, 21, 95, 24, 24, 48, 32, 27, 49, 97, 121, 53, 35, 34, 45, 38, 35, 36, 1, 2, 78, 25, 86, 90, 55, 99, 43, 29, 35, 30, 1, 76, 28, 92, 43, 93, 25, 39, 11, 67, 55, 75, 1, 63, 2, 49, 44, 11, 116, 42, 33, 53, 116, 10, 53, 43, 57, 74, 68, 71, 32, 7, 15, 18, 61, 1, 52, 68, 110, 11, 19, 90, 22, 119, 16, 126, 66, 37, 39, 17, 30, 93, 59, 4, 19, 70, 38, 59, 50, 15, 10, 19, 2, 28, 6, 52, 15, 83, 52, 11, 88, 10, 40, 6, 31, 71, 37, 17, 74, 11, 44, 16, 18, 32, 91, 87, 85, 50, 48, 7, 62, 22, 9, 45, 39, 36, 12, 19, 18, 1, 8, 41, 99, 4, 87, 88, 28, 78, 35, 14, 120, 11, 10, 23, 114, 10, 92, 29, 78, 30, 46, 34, 55, 11, 6, 27, 56, 44, 15, 3, 9, 0, 31, 14, 121, 42, 10, 40, 13, 23, 38, 53, 68, 27, 36, 45, 21, 35, 24, 14, 19, 49, 4, 3, 18, 114, 59, 39, 52, 24, 44, 8, 112, 18, 8, 14, 74, 63, 11, 84, 60, 73, 52, 76, 67, 99, 8, 34, 125, 22, 1, 46, 22, 16, 74, 34, 65, 86, 62, 58, 61, 32, 9, 8, 114, 4, 88, 95, 16, 38, 42, 47, 51, 66, 58, 38, 66, 66, 44, 19, 61, 3, 91, 29, 69, 9, 35, 91, 22, 24, 30, 50, 17, 51, 41, 83, 14, 20, 93, 14, 18, 37, 3, 29, 27, 16, 92, 2, 49, 12, 100, 6, 43, 2, 53, 34, 71, 10, 50, 11, 46, 66, 33, 62, 93, 14, 32, 15, 38, 11, 42, 32, 17, 0, 15, 60, 0, 118, 3, 64, 35, 91, 33, 38, 14, 48, 89, 44, 100, 34, 20, 24, 61, 117, 28, 26, 63, 40, 8, 5, 6, 4, 66, 55, 25, 53, 42, 25, 67, 80, 36, 56, 75, 94, 42, 109, 107, 18, 70, 5, 120, 11, 3, 94, 1, 20, 38, 38, 29, 61, 23, 42, 39, 29, 5, 3, 20, 63, 51, 22, 59, 18, 67, 17, 36, 42, 61, 1, 50, 18, 52, 55, 116, 65, 84, 56, 32, 111, 31, 14, 40, 90, 65, 43, 8, 51, 47, 64, 74, 56, 19, 52, 37, 104, 4, 33, 7, 45, 3, 34, 78, 35, 43, 68, 115, 22, 56, 33, 95, 76, 64, 48, 93, 95, 27, 0, 16, 9, 53, 4, 89, 32, 85, 33, 16, 20, 53, 26, 6, 28, 12, 33, 44, 8, 60, 45, 90, 55, 14, 20, 62, 115, 53, 71, 60, 94, 39, 1, 60, 3, 63, 39, 25, 67, 38, 71, 37, 113, 61, 76, 68, 30, 3, 9, 47, 111, 31, 34, 78, 52, 32, 26, 38, 115, 52, 66, 89, 13, 95, 87, 38, 44, 4, 21, 81, 2, 13, 8, 50, 80, 75, 0, 32, 26, 60, 1, 17, 74, 34, 29, 111, 54, 51, 92, 58, 85, 9, 95, 36, 37, 35, 41, 124, 20, 58, 29, 74, 41, 89, 85, 31, 83, 26, 5, 30, 0, 39, 3, 112, 78, 103, 62, 106, 52, 11, 90, 35, 68, 65, 35, 70, 51, 10, 81, 62, 7, 34, 59, 106, 4, 34, 43, 30, 118, 39, 69, 39, 49, 20, 82, 114, 78, 28, 44, 105, 18, 11, 85, 69, 114, 2, 1, 23, 34, 45, 9, 18, 8, 36, 43, 72, 20, 37, 39, 48, 88, 70, 19, 59, 1, 12, 4, 50, 46, 12, 101, 121, 28, 57, 9, 60, 77, 32, 68, 5, 44, 7, 37, 13, 50, 66, 2, 21, 0, 80, 57, 31, 114, 48, 5, 67, 29, 35, 45, 40, 28, 57, 3, 79, 61, 39, 60, 33, 20, 48, 51, 22, 94, 13, 47, 48, 14, 70, 36, 81, 23, 4, 43, 27, 98, 52, 32, 21, 33, 41, 55, 50, 19, 95, 28, 42, 28, 4, 84, 54, 69, 48, 22, 21, 88, 7, 10, 7, 49, 1, 27, 104, 36, 36, 90, 22, 120, 61, 2, 24, 12, 95, 29, 38, 18, 30, 24, 120, 65, 52, 0, 31, 115, 32, 12, 89, 45, 93, 35, 37, 23, 52, 0, 75, 6, 48, 39, 55, 97, 34, 49, 51, 88, 60, 21, 12, 92, 57, 30, 68, 121, 18, 60, 66, 65, 74, 68, 23, 49, 59, 76, 13, 12, 56, 58, 106, 28, 45, 42, 45, 24, 42, 27, 16, 10, 60, 38, 62, 41, 93, 93, 104, 31, 88, 93, 4, 122, 10, 21, 57, 34, 92, 35, 45, 28, 70, 61, 74, 88, 89, 43, 76, 22, 4, 55, 59, 59, 86, 12, 15, 4, 26, 88, 22, 75, 107, 5, 54, 74, 17, 49, 58, 80, 47, 32, 53, 48, 53, 38, 83, 62, 8, 11, 23, 79, 60, 2, 29, 7, 3, 3, 40, 33, 11, 26, 79, 53, 6, 42, 56, 89, 59, 68, 5, 15, 90, 31, 46, 49, 14, 3, 89, 5, 44, 22, 4, 120, 88, 6, 38, 95, 23, 2, 114, 32, 37, 90, 69, 92, 37, 102, 35, 20, 21, 31, 55, 13, 20, 18, 51, 87, 59, 13, 90, 11, 89, 21, 62, 66, 59, 12, 58, 28, 2, 43, 49, 13, 88, 62, 73, 50, 48, 84, 51, 119, 61, 36, 2, 19, 44, 55, 20, 1, 14, 42, 98, 39, 0, 5, 77, 78, 21, 22, 16, 51, 47, 17, 34, 23, 5, 68, 81, 9, 57, 15, 126, 83, 2, 46, 65, 1, 10, 45, 3, 48, 47, 93, 66, 28, 38, 85, 76, 87, 61, 71, 71, 39, 44, 10, 30, 81, 61, 36, 116, 7, 40, 88, 31, 120, 1, 56, 71, 49, 2, 49, 7, 38, 9, 61, 66, 67, 6, 90, 23, 104, 57, 48, 38, 56, 20, 55, 17, 1, 4, 2, 87, 1, 34, 25, 49, 42, 11, 77, 20, 38, 24, 49, 55, 29, 91, 30, 86, 65, 84, 53, 57, 85, 20, 19, 49, 14, 30, 12, 40, 39, 52, 7, 20, 1, 8, 41, 58, 68, 16, 91, 63, 43, 22, 43, 115, 34, 10, 25, 122, 71, 55, 59, 2, 117, 48, 7, 67, 51, 33, 62, 7, 51, 2, 39, 103, 31, 20, 45, 53, 87, 121, 64, 36, 66, 42, 87, 48, 20, 88, 88, 11, 49, 86, 85, 37, 107, 48, 53, 35, 44, 47, 30, 44, 33, 26, 28, 70, 28, 83, 20, 0, 74, 39, 22, 11, 44, 32, 21, 29, 93, 3, 94, 86, 92, 27, 6, 16, 74, 18, 4, 33, 45, 5, 55, 29, 6, 0, 10, 101, 29, 7, 13, 68, 80, 27, 126, 36, 8, 25, 22, 33, 46, 38, 86, 18, 3, 13, 34, 49, 74, 62, 18, 58, 62, 86, 16, 17, 21, 28, 53, 18, 53, 22, 60, 44, 90, 35, 46, 39, 80, 94, 38, 16, 39, 0, 24, 109, 20, 59, 14, 28, 23, 49, 6, 22, 10, 26, 22, 119, 87, 70, 40, 121, 28, 15, 33, 48, 73, 54, 58, 120, 28, 89, 31, 113, 61, 26, 68, 76, 88, 85, 26, 69, 20, 30, 7, 48, 70, 6, 19, 51, 22, 24, 31, 67, 71, 59, 34, 13, 72, 68, 67, 23, 49, 62, 9, 6, 54, 40, 59, 17, 20, 84, 93, 66, 65, 2, 3, 20, 91, 62, 84, 45, 41, 4, 9, 83, 29, 25, 24, 18, 88, 64, 37, 36, 99, 62, 42, 113, 31, 27, 34, 76, 50, 53, 34, 21, 119, 49, 64, 0, 29, 58, 8, 32, 63, 37, 13, 71, 30, 9, 4, 5, 114, 32, 59, 2, 90, 43, 6, 7, 38, 41, 55, 70, 23, 2, 46, 58, 115, 16, 33, 60, 35, 86, 11, 114, 74, 10, 56, 115, 3, 39, 8, 2, 89, 63, 50, 30, 35, 100, 15, 10, 22, 58, 32, 105, 16, 27, 28, 70, 66, 56, 59, 40, 60, 22, 42, 125, 61, 20, 33, 100, 1, 6, 37, 62, 100, 3, 63, 32, 56, 3, 5, 60, 53, 4, 57, 76, 31, 6, 3, 91, 117, 49, 68, 29, 36, 29, 12, 13, 45, 39, 40, 66, 23, 8, 89, 57, 70, 54, 62, 61, 3, 34, 109, 115, 42, 94, 23, 21, 31, 55, 1, 70, 17, 70, 31, 64, 44, 3, 23, 41, 54, 4, 58, 69, 59, 48, 60, 6, 75, 65, 1, 37, 37, 58, 95, 49, 1, 52, 29, 104, 39, 15, 84, 23, 87, 56, 55, 51, 56, 43, 38, 48, 81, 36, 39, 120, 58, 14, 31, 32, 83, 38, 53, 10, 17, 93, 50, 78, 35, 23, 21, 83, 66, 13, 39, 76, 99, 48, 26, 89, 13, 86, 85, 51, 32, 15, 94, 15, 56, 86, 6, 5, 20, 21, 32, 21, 16, 28, 31, 112, 8, 15, 11, 98, 25, 27, 52, 39, 103, 66, 58, 75, 32, 63, 53, 117, 17, 14, 27, 66, 58, 38, 39, 64, 117, 60, 64, 7, 15, 3, 3, 2, 111, 95, 56, 86, 88, 15, 92, 35, 87, 48, 24, 28, 6, 40, 9, 29, 33, 4, 5, 101, 16, 59, 90, 1, 112, 49, 51, 10, 56, 65, 0, 118, 10, 56, 56, 20, 31, 85, 24, 1, 80, 67, 0, 93, 1, 54, 10, 44, 50, 39, 45, 120, 58, 34, 0, 65, 109, 60, 38, 68, 26, 89, 36, 0, 86, 103, 59, 74, 36, 53, 35, 63, 77, 27, 23, 25, 25, 0, 85, 119, 8, 40, 53, 19, 57, 35, 53, 57, 25, 16, 2, 42, 56, 45, 9, 12, 40, 46, 56, 66, 0, 80, 57, 54, 112, 68, 19, 5, 14, 95, 62, 29, 54, 66, 42, 120, 66, 14, 60, 5, 100, 67, 59, 0, 10, 59, 31, 113, 85, 38, 101, 114, 36, 52, 28, 4, 122, 75, 67, 3, 93, 92, 81, 17, 3, 89, 57, 86, 66, 19, 41, 30, 108, 88, 70, 42, 40, 38, 95, 55, 55, 3, 21, 24, 10, 11, 94, 62, 109, 64, 50, 68, 28, 10, 1, 48, 48, 10, 41, 76, 21, 5, 63, 24, 87, 50, 25, 3, 45, 23, 51, 29, 36, 52, 32, 42, 66, 22, 0, 23, 121, 75, 24, 11, 33, 45, 21, 17, 41, 41, 94, 22, 65, 27, 53, 24, 87, 58, 62, 19, 44, 43, 63, 38, 4, 60, 63, 82, 33, 89, 93, 23, 118, 49, 5, 67, 3, 26, 55, 1, 34, 33, 28, 24, 29, 5, 27, 18, 77, 64, 61, 64, 25, 57, 30, 48, 29, 33, 92, 82, 121, 53, 15, 54, 69, 29, 37, 57, 42, 47, 54, 6, 40, 70, 61, 75, 59, 56, 22, 65, 67, 25, 12, 29, 19, 92, 0, 114, 36, 23, 68, 73, 28, 48, 61, 45, 98, 34, 16, 6, 40, 58, 0, 6, 33, 89, 68, 74, 30, 17, 89, 34, 72, 57, 61, 6, 1, 8, 33, 116, 43, 12, 58, 75, 39, 107, 32, 46, 115, 1, 35, 11, 15, 69, 44, 19, 86, 29, 68, 122, 32, 11, 57, 66, 122, 39, 21, 63, 15, 8, 82, 118, 93, 42, 5, 74, 69, 47, 60, 77, 73, 75, 60, 2, 29, 47, 85, 51, 51, 62, 36, 71, 32, 24, 37, 6, 120, 53, 5, 48, 12, 90, 43, 16, 20, 91, 93, 106, 42, 18, 102, 77, 121, 1, 6, 93, 2, 40, 5, 1, 36, 90, 3, 115, 61, 20, 29, 71, 77, 38, 28, 27, 27, 12, 0, 7, 2, 66, 21, 86, 63, 10, 8, 7, 85, 69, 53, 52, 0, 32, 9, 43, 44, 15, 90, 69, 48, 41, 25, 50, 72, 3, 0, 61, 16, 90, 1, 113, 41, 40, 92, 11, 49, 82, 22, 126, 122, 67, 22, 6, 1, 31, 32, 22, 4, 52, 32, 83, 48, 85, 31, 65, 115, 58, 59, 32, 4, 45, 3, 18, 60, 28, 61, 105, 49, 24, 37, 25, 121, 52, 44, 31, 62, 54, 36, 35, 85, 41, 43, 21, 37, 38, 61, 61, 86, 56, 24, 57, 80, 52, 53, 13, 92, 32, 45, 106, 61, 10, 71, 46, 42, 74, 50, 55, 58, 5, 33, 111, 50, 92, 40, 71, 42, 47, 93, 24, 108, 17, 27, 21, 19, 37, 20, 38, 1, 63, 93, 100, 35, 86, 9, 27, 70, 18, 1, 33, 57, 94, 62, 13, 86, 55, 8, 75, 69, 45, 89, 66, 112, 16, 18, 64, 6, 91, 5, 40, 52, 66, 26, 25, 58, 32, 91, 65, 116, 121, 68, 53, 1, 24, 80, 125, 0, 52, 59, 118, 28, 43, 14, 61, 116, 34, 6, 49, 16, 65, 38, 111, 23, 43, 22, 11, 9, 46, 6, 50, 75, 68, 53, 29, 32, 44, 38, 21, 38, 53, 39, 74, 62, 37, 94, 95, 82, 50, 3, 74, 93, 93, 47, 14, 3, 8, 64, 105, 29, 34, 9, 28, 111, 63, 126, 19, 13, 42, 38, 47, 38, 4, 59, 99, 4, 16, 22, 58, 88, 16, 0, 6, 49, 22, 9, 30, 11, 59, 61, 20, 26, 9, 4, 63, 88, 30, 48, 74, 35, 6, 32, 12, 45, 88, 13, 17, 58, 37, 53, 77, 108, 63, 76, 51, 36, 63, 4, 53, 60, 27, 24, 18, 39, 50, 24, 66, 89, 68, 13, 120, 26, 3, 55, 21, 54, 55, 86, 103, 23, 12, 60, 49, 116, 38, 91, 25, 5, 95, 94, 17, 53, 29, 57, 90, 42, 38, 90, 0, 122, 71, 21, 59, 6, 37, 36, 61, 7, 29, 2, 78, 53, 21, 20, 0, 110, 5, 70, 1, 29, 5, 82, 33, 78, 33, 35, 112, 7, 19, 15, 13, 89, 42, 66, 69, 99, 11, 63, 32, 34, 21, 37, 106, 58, 5, 0, 17, 121, 23, 95, 43, 57, 38, 50, 0, 63, 39, 11, 100, 0, 54, 39, 12, 23, 53, 12, 16, 81, 90, 52, 11, 45, 34, 53, 90, 6, 0, 10, 46, 72, 17, 46, 75, 61, 58, 62, 21, 10, 94, 35, 100, 54, 40, 60, 36, 90, 56, 69, 11, 94, 100, 5, 119, 83, 11, 10, 110, 61, 80, 42, 48, 119, 74, 14, 36, 34, 12, 45, 52, 54, 26, 13, 25, 37, 59, 95, 95, 87, 53, 51, 32, 63, 35, 95, 34, 6, 15, 5, 16, 2, 85, 10, 91, 104, 18, 24, 3, 93, 65, 63, 62, 17, 41, 53, 70, 56, 11, 56, 69, 75, 66, 1, 23, 80, 32, 109, 107, 22, 47, 58, 25, 59, 56, 3, 57, 108, 74, 50, 20, 3, 92, 8, 52, 34, 30, 54, 112, 29, 37, 24, 95, 118, 24, 59, 53, 34, 43, 15, 55, 3, 24, 63, 103, 69, 78, 1, 55, 22, 2, 33, 51, 70, 86, 2, 28, 81, 33, 27, 78, 69, 25, 42, 95, 18, 27, 49, 120, 68, 67, 74, 105, 72, 40, 33, 100, 83, 51, 63, 53, 0, 35, 38, 59, 63, 47, 51, 1, 69, 38, 42, 121, 94, 76, 65, 89, 13] // swiftlint:disable:this line_length
}
