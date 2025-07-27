import XCTest

class ProductTests: XCTestCase {
    let service = ProductService()
    
    func testProductListIsNotEmpty() {
        let products = service.fetchProducts()
        XCTAssertFalse(products.isEmpty, "El listado de productos no debería estar vacío")
    }

    func testProductListIsEmpty() {
        let products = service.fetchEmptyProducts()
        XCTAssertTrue(products.isEmpty, "El listado de productos debería estar vacío")
    }
}