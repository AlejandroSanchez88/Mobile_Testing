import Foundation

class ProductService {
    func fetchProducts() -> [Product] {
        return [
            Product(id: 1, name: "iPhone 13", description: "The latest iPhone from Apple", price: 999.99, currency: "USD", in_stock: true),
            Product(id: 2, name: "Samsung Galaxy S21", description: "The latest Samsung phone", price: 899.99, currency: "USD", in_stock: true),
            Product(id: 3, name: "Google Pixel 6", description: "The latest Google phone", price: 799.99, currency: "USD", in_stock: false)
        ]
    }
    
    func fetchEmptyProducts() -> [Product] {
        return []
    }
}