# 🛍️ FakeStore Mobile App - Onboarding Challenge

Welcome to the team! 🚀

This project is designed to introduce you to our development standards, workflow, and preferred tech stack. Your goal is to build a functional e-commerce mobile application using Flutter and the **FakeStore API**.

This challenge will test your ability to handle API integrations, manage state, validate forms, and structure a scalable Flutter application.

## 📚 Data Source
You will use the **FakeStoreAPI** for all data requirements. Please refer to their documentation for endpoint details:
- **Documentation:** [https://fakestoreapi.com/docs](https://fakestoreapi.com/docs)

---

## 🛠️ Tech Stack & Requirements
To ensure consistency with our codebase, you are **required** to use the following packages:

1.  **[dio](https://pub.dev/packages/dio):** For handling all HTTP requests and API interactions.
2.  **[freezed](https://pub.dev/packages/freezed):** For generating immutable data models and unions.
    * *Note: You will also need `build_runner` and `json_serializable` for code generation.*

**State Management:**
You are free to use your preferred state management solution (Provider, Riverpod, BLoC, etc.), but please ensure your logic is separated from your UI.

---

## 📱 Deliverables & Features

Please implement the following screens and functionality. Use the checkboxes below to track your progress.

### Core Features (Mandatory)

- [ ] **1. Login Screen**
    - Implement a form with `username` and `password` validation.
    - Use the Auth endpoint (`POST /auth/login`) to authenticate.
    - *Tip: You can use the mock users provided in the API docs (e.g., user: `mor_2314`, pass: `83r5^_`).*

- [ ] **2. Product List Screen**
    - Fetch and display a list of all products (`GET /products`).
    - Use a Grid or List layout.
    - Implement a "Loading" state and an "Error" state.

- [ ] **3. Product View Screen**
    - Tapping a product in the list should navigate to this detailed view.
    - Display the product image, title, price, description, and category.
    - Include an "Add to Cart" button.

- [ ] **4. Cart Screen**
    - Display a list of items added to the cart.
    - Allow the user to remove items from the cart.
    - Display the **Total Price** of all items.
    - *Note: You may manage the Cart state locally within the app (client-side) rather than syncing with the API cart endpoint.*

- [ ] **5. Add Product Form Screen**
    - A form to create a new product.
    - Include fields for: Title, Price, Description, Image URL, and Category.
    - Implement form validation (ensure fields are not empty, price is a number).
    - Send a request to the API (`POST /products`).
    - *Note: The FakeStoreAPI will return the new product object, but it will not actually update the database. Just handle the success response.*

### Bonus Features (Optional)

- [ ] **6. Categories Screen**
    - Fetch and display all distinct categories (`GET /products/categories`).
    - Tapping a category should navigate to the Filtered List.

- [ ] **7. Filtered Product List**
    - Display products belonging only to a specific category (`GET /products/category/{category_name}`).

---

**Good luck! We/I can't wait to see what you build.** 👨‍💻👩‍💻