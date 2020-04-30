//
//  SecretConstants.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 30.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation

struct SecretConstants {

    let RADAttributionKey: [UInt8] = [78, 66, 64, 3, 95, 35, 46, 50, 61, 43, 78, 51, 55, 55, 69, 34, 38, 32, 37, 40, 58, 34, 14, 25, 4, 29, 108, 73, 91, 72, 95, 126, 36, 58, 44, 56, 15, 36, 36, 45, 34, 46, 38, 109, 51, 6, 46, 52, 2, 60, 5, 48, 38, 14, 38, 42, 66, 15, 55, 48, 38, 46, 84, 26, 5, 41, 11, 51, 0, 82, 59, 23, 89, 50, 7, 75, 34, 83, 95, 31, 11, 45, 95, 109, 20, 23, 44, 64, 62, 44, 24, 53, 39, 69, 48, 0, 126, 37, 11, 29, 15, 80, 91, 40, 44, 118, 6, 12, 60, 13, 51, 55, 28, 67, 52, 36, 114, 46, 70, 12, 55, 55, 88, 100, 68, 11, 63, 55, 6, 45, 58, 22, 8, 33, 23, 74, 49, 24, 0, 12, 0, 76, 75, 36, 12, 1, 21, 93, 34, 29, 22, 38, 60, 31, 80, 0, 117, 50, 1, 86, 83, 101, 63, 68, 3, 55, 1, 45, 48, 46, 34, 38, 13, 19, 31, 27, 27, 28, 11, 19, 9, 94, 97, 98, 32, 47, 43, 19, 58, 40, 29, 63, 58, 0, 33, 60, 47, 74, 28, 40, 23, 12, 7, 64, 25, 52, 32, 27, 37, 9, 13, 14, 28, 93, 7, 71, 6, 28, 53, 28, 52, 9, 64, 51, 57, 23, 75, 21, 44, 45, 26, 14, 26, 70, 13, 66, 33, 15, 40, 86, 38, 26, 0, 31, 55, 16, 68, 67, 1, 4, 20, 87, 28, 38, 38, 27, 7, 15, 75, 40, 22, 95, 96, 17, 117, 8, 32, 83, 21, 86, 59, 26, 56, 67, 51, 37, 51, 13, 90, 93, 87, 14, 9, 98, 59, 82, 17, 56, 2, 40, 41, 107, 34, 60, 44, 57, 28, 33, 53, 0, 10, 19, 86, 1, 36, 52, 120, 87, 17, 92, 3, 19, 30, 54, 6, 75, 45, 22, 26, 11, 13, 22, 26, 93, 37, 54, 57, 34, 5, 6, 63, 18, 82, 68, 4, 93, 59, 43, 28, 70, 20, 2, 88, 8, 21, 113, 38, 75, 67, 87, 70, 1, 34, 42, 2, 20, 78, 13, 60, 13, 41, 35, 1, 111, 28, 89, 88, 59, 44, 42, 28, 42, 87, 33, 35, 60, 23, 46, 43, 15, 41, 15, 84, 43, 112, 45, 50, 20, 7, 33, 1, 13, 16, 34, 17, 0, 35, 15, 3, 25, 41, 58, 1, 76, 38, 47, 41, 1, 29, 39, 22, 53, 6, 5, 44, 10, 33, 95, 48, 17, 24, 109, 123, 60, 54, 113, 19, 32, 19, 53, 39, 0, 13, 71, 83, 66, 8, 81, 32, 0, 53, 8, 39, 68, 0, 40, 33, 19, 58, 60, 15, 84, 3, 71, 60, 40, 61, 34, 75, 40, 23, 55, 71, 39, 4, 50, 22, 87, 60, 16, 20, 50, 6, 59, 28, 0, 30, 87, 15, 14, 16, 14, 27, 105, 63, 80, 97, 50, 67, 40, 58, 22, 40, 14, 78, 40, 0, 45, 71, 3, 45, 81, 27, 4, 4, 5, 46, 84, 29, 21, 6, 37, 49, 36, 29, 0, 49, 13, 27, 0, 7, 3, 10, 22, 51, 44, 6, 65, 50, 42, 54, 87, 2, 3, 8, 1, 48, 89, 58, 4, 62, 86, 77, 121, 38, 43, 17, 82, 23, 81, 54, 126, 61, 11, 0, 51, 124, 39, 43, 46, 18, 46, 36, 86, 67, 50, 47, 38, 16, 40, 35, 52, 49, 49, 49, 36, 25, 35, 5, 58, 60, 80, 94, 106, 35, 39, 43, 43, 2, 15, 71, 95, 44, 31, 80, 5, 3, 45, 89, 89, 51, 22, 27, 94, 11, 8, 59, 69, 2, 43, 44, 87, 34, 14, 60, 34, 126, 3, 34, 27, 88, 49, 28, 61, 114, 11, 39, 23, 34, 81, 34, 22, 38, 34, 60, 61, 44, 45, 43, 43, 37, 12, 11, 101, 62, 2, 2, 27, 5, 17, 38, 54, 87, 89, 13, 61, 33, 12, 24, 6, 3, 76, 120, 19, 10, 1, 25, 14, 59, 84, 2, 12, 81, 92, 7, 56, 49, 1, 14, 88, 43, 101, 36, 23, 89, 0, 83, 67, 54, 84, 58, 39, 51, 68, 8, 57, 91, 27, 22, 0, 39, 41, 122, 97, 27, 54, 8, 6, 23, 45, 28, 5, 57, 52, 50, 31, 47, 14, 3, 29, 81, 46, 42, 126, 5, 36, 27, 48, 91, 33, 5, 54, 92, 58, 19, 39, 76, 80, 66, 62, 94, 36, 111, 37, 4, 5, 75, 37, 39, 46, 49, 53, 14, 49, 21, 22, 35, 55, 94, 44, 6, 36, 9, 70, 11, 4, 50, 67, 14, 52, 24, 0, 23, 36, 78, 63, 21, 26, 18, 3, 57, 12, 93, 6, 0, 9, 16, 19, 31, 41, 55, 45, 80, 21, 28, 65, 111, 47, 93, 12, 85, 32, 25, 91, 58, 11, 6, 31, 59, 7, 87, 107, 83, 12, 9, 59, 1, 66, 48, 35, 88, 61, 124, 30, 13, 19, 116, 80, 56, 51, 16, 91, 3, 63, 17, 6, 8, 19, 63, 60, 33, 46, 24, 71, 5, 24, 7, 38, 38, 40, 62, 21, 22, 57, 33, 89, 63, 38, 53, 56, 90, 14, 119, 97, 17, 20, 47, 32, 1, 2, 52, 62, 45, 54, 43, 33, 78, 63, 3, 23, 36, 3, 24, 26, 25, 59, 83, 38, 21, 60, 62, 17, 6, 25, 42, 55, 18, 62, 16, 47, 30, 72, 96, 19, 16, 125, 9, 19, 14, 18, 31, 24, 48, 59, 3, 10, 35, 42, 29, 45, 80, 31, 62, 90, 2, 11, 27, 20, 50, 36, 94, 4, 48, 26, 17, 3, 19, 8, 21, 33, 47, 109, 106, 28, 35, 37, 25, 79, 46, 4, 56, 29, 62, 43, 11, 34, 54, 23, 4, 35, 8, 28, 89, 26, 65, 81, 49, 4, 29, 21, 7, 48, 19, 5, 50, 22, 66, 56, 31, 34, 43, 63, 119, 17, 34, 37, 57, 50, 60, 7, 43, 30, 0, 69, 51, 1, 10, 39, 58, 26, 14, 43, 61, 104, 4, 7, 97, 20, 68, 55, 22, 4, 20, 69, 49, 4, 29, 3, 58, 47, 40, 17, 103, 17, 21, 125, 10, 52, 52, 2, 56, 36, 62, 65, 33, 36, 11, 7, 21, 29, 44, 46, 1, 116, 37, 54, 29, 37, 58, 63, 59, 39, 62, 51, 21, 35, 3, 39, 28, 5, 36, 2, 104, 29, 114, 48, 41, 29, 65, 52, 34, 126, 32, 53, 54, 20, 1, 20, 52, 94, 76, 57, 26, 29, 10, 85, 64, 1, 71, 33, 8, 7, 10, 50, 51, 16, 59, 26, 17, 36, 27, 20, 107, 36, 3, 40, 45, 60, 0, 86, 34, 95, 95, 10, 80, 74, 117, 20, 2, 10, 51, 88, 46, 89, 23, 89, 94, 90, 19, 44, 31, 34, 3, 79, 46, 36, 126, 94, 38, 59, 42, 50, 107, 55, 7, 11, 13, 45, 55, 61, 69, 14, 43, 65, 23, 5, 21, 51, 46, 12, 84, 28, 10, 76, 35, 2, 45, 2, 67, 18, 22, 48, 82, 19, 83, 68, 34, 7, 33, 62, 4, 33, 121, 7, 112, 112, 19, 22, 39, 78, 71, 58, 13, 68, 87, 4, 119, 86, 61, 31, 87, 101, 10, 77, 37, 52, 91, 52, 4, 9, 20, 86, 80, 27, 19, 5, 67, 4, 31, 91, 0, 42, 87, 62, 17, 34, 2, 10, 79, 53, 74, 12, 2, 24, 83, 49, 29, 33, 61, 21, 91, 42, 59, 69, 2, 47, 4, 19, 3, 87, 23, 17, 39, 12, 17, 5, 69, 3, 31, 48, 22, 17, 89, 34, 16, 2, 75, 43, 38, 23, 38, 25, 44, 62, 38, 26, 30, 44, 24, 89, 53, 28, 21, 65, 10, 2, 12, 2, 30, 50, 24, 25, 42, 17, 93, 40, 32, 42, 26, 5, 23, 84, 92, 35, 11, 32, 45, 22, 69, 92, 56, 91, 91, 30, 35, 8, 35, 33, 32, 22, 81, 28, 90, 125, 43, 52, 46, 39, 95, 52, 45, 107, 18, 51, 84, 54, 55, 2, 64, 43, 44, 6, 109, 52, 57, 45, 8, 82, 37, 52, 7, 95, 56, 43, 20, 38, 8, 22, 33, 31, 41, 40, 23, 68, 36, 15, 4, 3, 4, 51, 59, 6, 18, 27, 81, 33, 54, 27, 3, 92, 92, 16, 23, 61, 0, 46, 51, 92, 50, 32, 33, 38, 3, 74, 63, 3, 78, 93, 15, 5, 26, 93, 58, 67, 19, 49, 17, 47, 36, 13, 69, 15, 13, 70, 55, 74, 59, 15, 52, 25, 20, 61, 94, 102, 25, 38, 114, 1, 44, 85, 0, 53, 38, 74, 85, 7, 9, 41, 24, 89, 5, 89, 9, 86, 8, 4, 58, 62, 55, 36, 63, 36, 37, 64, 20, 10, 4, 7, 67, 48, 56, 109, 31, 99, 44, 111, 42, 18, 29, 31, 22, 51, 28, 57, 61, 17, 30, 33, 21, 57, 33, 54, 85, 65, 3, 12, 3, 71, 5, 78, 39, 40, 32, 39, 9, 70, 76, 37, 68, 2, 6, 8, 30, 19, 35, 9, 16, 22, 6, 3, 32, 76, 48, 16, 13, 27, 39, 81, 42, 0, 53, 63, 0, 124, 22, 3, 97, 63, 61, 22, 94, 83, 60, 0, 80, 58, 65, 6, 1, 40, 25, 20, 65, 35, 44, 19, 120, 51, 93, 40, 31, 64, 94, 3, 54, 22, 47, 34, 33, 11, 7, 27, 14, 75, 30, 13, 31, 28, 48, 84, 69, 34, 29, 25, 60, 4, 1, 56, 31, 32, 47, 53, 91, 42, 20, 7, 47, 40, 63, 84, 11, 126, 47, 49, 18, 31, 16, 7, 0, 62, 50, 63, 59, 104, 36, 5, 2, 2, 26, 1, 42, 32, 54, 36, 6, 65, 61, 89, 28, 49, 35, 41, 121, 36, 41, 5, 22, 22, 69, 15, 48, 60, 13, 3, 14, 63, 23, 47, 61, 90, 38, 0, 55, 67, 4, 78, 27, 51, 35, 51, 5, 46, 28, 4, 29, 6, 126, 10, 54, 60, 92, 31, 123, 7, 4, 35, 11, 75, 70, 1, 65, 23, 36, 1, 12, 22, 116, 49, 14, 45, 85, 38, 32, 22, 89, 7, 50, 37, 1, 6, 24, 53, 54, 50, 16, 7, 51, 80, 41, 89, 25, 55, 79, 51, 57, 51, 24, 39, 7, 36, 17, 67, 39, 25, 7, 70, 60, 15, 38, 33, 0, 101, 92, 101, 2, 39, 18, 33, 37, 31, 23, 82, 42, 62, 2, 17, 29, 51, 0, 26, 89, 85, 104, 55, 53, 49, 13, 46, 1, 0, 42, 71, 81, 74, 1, 89, 40, 35, 53, 7, 25, 21, 92, 101, 54, 83, 14, 0, 35, 23, 33, 10, 83, 6, 21, 62, 49, 91, 23, 80, 5, 76, 73, 52, 7, 61, 75, 79, 68, 13, 68, 28, 28, 88, 36, 63, 29, 81, 4, 46, 20, 36, 46, 111, 35, 36, 42, 15, 7, 46, 38, 19, 10, 31, 21, 10, 36, 51, 2, 27, 93, 46, 26, 28, 110, 44, 41, 11, 28, 23, 28, 33, 57, 37, 42, 6, 55, 82, 11, 0, 8, 33, 11, 67, 17, 47, 82, 31, 45, 7, 52, 107, 15, 55, 14, 1, 62, 47, 9, 32, 47, 10, 24, 25, 51, 17, 113, 21, 24, 52, 30, 37, 19, 66, 1, 19, 113, 33, 23, 30, 18, 22, 32, 77, 4, 45, 8, 55, 29, 84, 6, 0, 83, 31, 51, 26, 25, 80, 35, 95, 37, 82, 70, 26, 116, 40, 116, 21, 17, 48, 27, 59, 8, 74, 12, 65, 78, 19, 93, 61, 91, 93, 89, 73, 70, 9, 4, 24, 29, 14, 28, 21, 38, 66, 41, 2, 69, 95, 58, 37, 22, 6, 124, 107, 119, 14, 110, 13, 46, 54, 1, 5, 66, 10, 74, 29, 35, 83, 36, 64, 18, 37, 33, 93, 21, 34, 63, 47, 66, 18, 43, 85, 61, 20, 60, 54, 68, 70, 10, 7, 35, 109, 103, 59, 21, 119, 110, 47, 2, 6, 67, 4, 7, 58, 40, 20, 15, 1, 29, 37, 11, 38, 12, 24, 53, 47, 64, 29, 48, 63, 56, 32, 87, 63, 18, 64, 58, 14, 50, 1, 60, 10, 111, 36, 16, 39, 10, 9, 49, 42, 33, 71, 15, 62, 60, 49, 42, 23, 62, 61, 23, 30, 11, 64, 34, 38, 97, 64, 56, 63, 22, 18, 38, 68, 93, 10, 7, 15, 2, 88, 65, 11, 119, 100, 44, 28, 25, 7, 59, 86, 21, 62, 34, 26, 8, 62, 107, 35, 70, 63, 6, 62, 37, 91, 55, 7, 18, 77, 31, 14, 38, 82, 47, 18, 20, 26, 63, 61, 5, 7, 44, 6, 65, 0, 9, 10, 23, 48, 31, 44, 16, 126, 17, 58, 46, 71, 44, 42, 39, 28, 72, 5, 10, 98, 64, 43, 26, 64, 1, 8, 93, 25, 79, 48, 10, 58, 46, 93, 60, 6, 23, 11, 69, 36, 0, 55, 19, 82, 71, 4, 54, 60, 19, 4, 46, 49, 5, 52, 44, 8, 19, 39, 33, 77, 1, 44, 8, 52, 95, 61, 89, 36, 17, 2, 85, 2, 126, 8, 59, 31, 0, 36, 31, 57, 11, 115, 18, 92, 15, 41, 43, 76, 60, 17, 18, 27, 38, 55, 32, 68, 76, 45, 62, 92, 58, 19, 7, 57, 50, 74, 33, 22, 49, 4, 36, 93, 7, 19, 88, 49, 62, 87, 30, 43, 106, 35, 119, 55, 23, 28, 7, 48, 4, 2, 34, 40, 40, 12, 5, 58, 49, 101, 41, 107, 38, 41, 60, 64, 27, 36, 11, 3, 81, 6, 43, 19, 59, 33, 62, 11, 11, 2, 93, 96, 37, 11, 50, 61, 53, 3, 30, 55, 3, 24, 43, 29, 40, 92, 23, 45, 38, 86, 37, 107, 16, 88, 30, 38, 53, 3, 56, 74, 22, 6, 38, 71, 59, 66, 0, 47, 27, 29, 64, 19, 38, 51, 75, 19, 57, 85, 5, 48, 81, 50, 13, 17, 113, 52, 33, 44, 39, 26, 3, 99, 34, 18, 12, 69, 77, 13, 7, 42, 42, 16, 41, 32, 48, 57, 0, 3, 94, 49, 71, 27, 57, 9, 22, 52, 60, 42, 64, 39, 33, 65, 85, 89, 111, 21, 34, 62, 12, 68, 42, 75, 30, 14, 29, 90, 26, 50, 26, 107, 87, 6, 44, 53, 2, 40, 10, 37, 8, 55, 66, 98, 41, 62, 112, 85, 7, 17, 70, 5, 49, 66, 16, 20, 53, 0, 52, 14, 10, 59, 47, 89, 29, 3, 1, 52, 51, 21, 24, 41, 47, 4, 21, 69, 60, 12, 38, 43, 24, 11, 25, 39, 5, 22, 50, 19, 31, 4, 69, 48, 62, 21, 16, 57, 78, 63, 57, 36, 11, 39, 24, 103, 27, 46, 57, 94, 62, 84, 63, 38, 29, 57, 17, 39, 59, 28, 71, 14, 95, 50, 77, 20, 16, 29, 39, 82, 47, 20, 34, 7, 14, 49, 54, 2, 29, 47, 11, 1, 11, 89, 31, 125, 55, 82, 17, 22, 59, 21, 45, 44, 86, 34, 48, 43, 16, 88, 7, 24, 7, 109, 109, 52, 121, 113, 0, 11, 63, 39, 51, 37, 42, 21, 46, 40, 62, 17, 32, 43, 43, 24, 57, 26, 25, 2, 64, 29, 65, 52, 91, 89, 35, 1, 93, 5, 7, 16, 27, 60, 60, 42, 22, 48, 106, 60, 112, 80, 79, 87, 20, 57, 3, 21, 93, 75, 46, 31, 62, 5, 27, 60, 95, 79, 53, 54, 97, 33, 21, 60, 24, 5, 9, 62, 39, 22, 44, 59, 27, 16, 41, 19, 96, 63, 116, 125, 2, 15, 5, 22, 49, 23, 17, 18, 7, 35, 7, 82, 27, 10, 41, 33, 43, 99, 74, 89, 88, 35, 53, 12, 95, 53, 39, 32, 40, 67, 62, 70, 22, 48, 54, 31, 108, 60, 52, 18, 6, 84, 16, 29, 48, 126, 1, 33, 80, 54, 11, 12, 8, 6, 2, 14, 9, 91, 24, 87, 94, 7, 57, 33, 39, 41, 46, 14, 49, 51, 60, 32, 17, 90, 92, 19, 93, 29, 35, 5, 51, 3, 4, 82, 35, 18, 6, 64, 46, 28, 15, 19, 14, 9, 33, 33, 46, 123, 10, 40, 49, 54, 51, 21, 10, 52, 55, 51, 81, 67, 126, 49, 39, 0, 44, 52, 92, 7, 20, 7, 32, 81, 27, 53, 58, 69, 14, 68, 54, 6, 107, 28, 26, 60, 17, 11, 36, 94, 2, 27, 89, 65, 19, 36, 69, 86, 55, 7, 49, 3, 13, 91, 16, 31, 55, 12, 87, 42, 52, 43, 12, 80, 89, 74, 16, 3, 89, 34, 32, 43, 21, 53, 23, 62, 7, 101, 46, 76, 33, 88, 42, 35, 36, 31, 58, 46, 5, 27, 33, 16, 44, 6, 34, 7, 32, 95, 103, 30, 43, 107, 57, 93, 39, 29, 26, 29, 47, 74, 63, 16, 115, 47, 0, 91, 91, 6, 44, 124, 65, 87, 89, 50, 64, 93, 43, 80, 55, 2, 28, 5, 91, 92, 59, 33, 42, 63, 29, 30, 114, 54, 75, 1, 59, 87, 36, 0, 27, 42, 50, 8, 114, 36, 11, 8, 41, 89, 42, 68, 10, 38, 60, 18, 68, 49, 24, 42, 10, 35, 22, 25, 4, 35, 74, 40, 1, 46, 108, 19, 4, 6, 35, 21, 46, 41, 3, 61, 34, 48, 12, 56, 125, 49, 33, 43, 8, 6, 7, 69, 93, 25, 28, 66, 45, 13, 5, 107, 37, 64, 11, 38, 29, 38, 4, 49, 45, 19, 111, 96, 35, 111, 27, 42, 44, 10, 30, 49, 16, 3, 34, 63, 117, 32, 41, 45, 47, 55, 24, 90, 34, 41, 62, 45, 49, 49, 35, 32, 50, 12, 12, 33, 5, 91, 65, 2, 55, 38, 79, 0, 10, 2, 53, 43, 14, 3, 93, 46, 34, 23, 12, 63, 78, 0, 60, 92, 85, 88, 29, 25, 71, 42, 18, 61, 0, 41, 10, 51, 86, 93, 8, 16, 59, 91, 67, 95, 10, 3, 119, 35, 115, 44, 39, 10, 6, 6, 66, 53, 43, 23, 45, 11, 125, 28, 39, 62, 52, 2, 28, 125, 11, 21, 27, 57, 67, 41, 44, 80, 8, 12, 42, 40, 54, 89, 70, 93, 13, 109, 69, 61, 11, 48, 25, 5, 36, 61, 63, 58, 12, 70, 20, 5, 41, 11, 32, 36, 6, 29, 5, 102, 39, 54, 59, 25, 61, 53, 13, 37, 38, 71, 48, 89, 35, 80, 0, 38, 9, 30, 31, 51, 21, 45, 16, 38, 18, 44, 53, 32, 31, 32, 1, 4, 17, 60, 39, 22, 41, 64, 39, 75, 62, 88, 97, 51, 57, 14, 58, 18, 49, 27, 63, 42, 0, 25, 52, 57, 44, 2, 111, 25, 0, 30, 38, 42, 12, 86, 48, 26, 43, 57, 16, 74, 14, 48, 85, 46, 48, 46, 92, 75, 58, 37, 29, 29, 61, 53, 38, 6, 82, 38, 48, 25, 48, 33, 11, 92, 54, 80, 118, 125, 106, 60, 16, 35, 33, 84, 60, 126, 4, 69, 11, 68, 17, 39, 11, 24, 90, 42, 28, 92, 28, 6, 33, 59, 25, 1, 36, 20, 15, 71, 39, 3, 37, 14, 7, 39, 39, 50, 68, 107, 12, 40, 115, 49, 48, 60, 20, 36, 81, 11, 42, 60, 125, 93, 61, 36, 23, 55, 21, 31, 8, 56, 39, 47, 36, 3, 1, 92, 110, 91, 72, 95, 89, 68, 54, 39, 42, 71, 124, 1, 0, 100, 17, 54, 63, 51, 51, 32, 44, 83, 46, 55, 29, 72, 64, 66, 78, 66]
}