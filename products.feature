# features/products.feature

Feature: Product management

  Background:
    Given the following products
      | id | name      | category    | availability  |
      | 1  | Product 1 | Electronics | In Stock      |
      | 2  | Product 2 | Electronics | Out of Stock  |
      | 3  | Product 3 | Furniture   | In Stock      |

  Scenario: Searching a product by name
    Given I have products in the system
    When I search for products with the name "Product 1"
    Then I should see the following product
      | id | name      | category    | availability  |
      | 1  | Product 1 | Electronics | In Stock      |
