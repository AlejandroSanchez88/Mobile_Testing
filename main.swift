import Foundation

// Modelo de Producto
struct Product: Codable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let currency: String
    let in_stock: Bool
}

struct ProductResponse: Codable {
    let products: [Product]
}

// Funcion para consumir la API
func fetchProducts() {
    guard let url = URL(string: "https://jsonkeeper.com/b/MX0A") else {
        print("URL inválida.")
        return
    }

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error al obtener datos: \(error.localizedDescription)")
            return
        }

        guard let data = data else {
            print("No se recibió data.")
            return
        }

        do {
            let decodedResponse = try JSONDecoder().decode(ProductResponse.self, from: data)
            for product in decodedResponse.products {
                print("Producto: \(product.name) - Precio: \(product.currency) \(product.price)")
            }
        } catch {
            print("Error al decodificar JSON: \(error)")
        }
    }

    task.resume()
}

// Ejecutar
fetchProducts()

// Mantener vivo el Playground (si usas Xcode Playground)
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
