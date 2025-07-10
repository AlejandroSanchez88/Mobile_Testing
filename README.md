# Mobile Testing - E-commerce API 3

Este repositorio contiene una implementación simple en Swift que:

- Se conecta a una API pública (`https://jsonkeeper.com/b/MX0A`)
- Obtiene una lista de productos en formato JSON
- Muestra en consola el nombre y el precio de cada producto

## Cómo ejecutar

1. Abrí Xcode y creá un nuevo Playground.
2. Copiá el contenido de `main.swift` dentro del Playground.
3. Ejecutá el Playground y observá la salida en la consola.

### Ejemplo de salida esperada:
```
Producto: iPhone 13 - Precio: USD 999.99
Producto: Samsung Galaxy S21 - Precio: USD 899.99
Producto: Google Pixel 6 - Precio: USD 799.99
```

## Estructura del JSON
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
    },
    ...
  ]
}
```

## Autor
Alejandro Sánchez
