import Foundation

// Initial array of integers
var array: [Int] = [65, 75, 85, 95, 105, 115, 125, 135, 145, 155, 165, 175, 185, 195, 205, 215, 225, 235, 245, 255]

// Selecting a random element from the array to be the target value
let targeto = array.randomElement() ?? 0

// Appending numbers from 256 to 286 to the array
for num in 256...286 {
    array.append(num)
}

// Binary search function to find the index of a given value in a sorted array
func binarySearch(_ array: [Int], _ value: Int) -> Int? {
    // Check if the array is empty
    guard !array.isEmpty else {
        return nil
    }
    
    // If the array has only one element, check if it matches the value
    if array.count == 1 {
        return array.first == value ? 0 : nil
    }
    
    // Initialize left and right pointers
    var left: Int = 0
    var right: Int = array.count - 1
    
    // Loop to narrow down the search range
    while left <= right {
        // Calculate the middle index
        let middleIndex = (left + right) / 2
        let middleValue = array[middleIndex]
        
        // Adjust pointers based on comparison
        if middleValue > value {
            right = middleIndex - 1
        }
        else if middleValue < value {
            left = middleIndex + 1
        }
        else if middleValue == value {
            // Value found, return its index
            return middleIndex
        }
    }
    // Value not found, return nil
    return nil
}

// Print the size of the array and the target value being searched
print("Estamos trabajando con una cadena de \(array.count) valores \n \n Buscando el numero: \(targeto) 💾")

// Call the binary search function to find the index of the target value
let foundIndex = binarySearch(array, targeto)

// If the value is found, print its index; otherwise, indicate that it was not found

print("\n¡Buenas Noticias! Valor encontrado en la posicion #\(foundIndex?.description ?? "Not found") 📇")
