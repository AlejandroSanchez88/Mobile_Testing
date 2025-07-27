# Mobile Testing - API 4

Este proyecto simula un módulo de una app de e-commerce donde se recuperan productos desde una API externa.

## Objetivo

Implementar tests unitarios que verifiquen:
1. Que se muestre información cuando hay productos.
2. Que no se muestre información cuando la lista esté vacía.

## Archivos

- `Product.swift`: Modelo de datos.
- `ProductService.swift`: Simula la respuesta de la API.
- `ProductTests.swift`: Tests unitarios.

## Estructura del JSON (usado como base)

```json
{
  "products": [
    {
      "id": 1,
      "name": "iPhone 13",
      "description": "The latest iPhone from Apple",
      "price": 999.99,
      "currency": "USD",
      "in_stock": true
    }
  ]
}
```