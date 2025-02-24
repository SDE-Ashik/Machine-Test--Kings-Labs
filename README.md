<!DOCTYPE html>
<html lang="en">



<body>
    <h1>Flutter App - Kings Lab Machine Test</h1>
    <p>This Flutter application demonstrates authentication and product management using Riverpod, Dio, and Dummy APIs.</p>

  <h2>1. Login Screen</h2>
    <p>The app provides a login screen where users can enter their credentials:</p>
    <ul>
        <li><strong>Username:</strong> emilys</li>
        <li><strong>Password:</strong> emilysspass</li>
    </ul>
  <p>When the login button is clicked, the app makes a POST request to:</p>
    <pre><code>https://dummyjson.com/auth/</code></pre>
    <p>If the login is successful, the user is navigated to the Home Page displaying user details. If authentication fails, an error message is shown using a toast notification.</p>
    <img src="assest/img.jpeg" alt="Login Screen" width="400">

  <h2>2. Home Page</h2>
    <p>The home page fetches product data from:</p>
    <pre><code>https://dummyjson.com/products</code></pre>
    <p>It displays a list of products along with an Edit button for each item.</p>
    <p>Clicking the Edit button navigates the user to the Product Page.</p>
    <img src="assest/img1.jpeg" alt="Home Screen" width="400">

 <h2>3. Product Page</h2>
    <p>The product page retrieves details for a selected product using:</p>
    <pre><code>https://dummyjson.com/product/{product_id}</code></pre>
    <p>Users can update product information on this page.</p>
    <img src="assest\img2.jpeg" alt="Product Page" width="400">

  <h2>Technologies Used</h2>
   <ul>
        <li><strong>Flutter</strong> - UI framework</li>
        <li><strong>Riverpod</strong> - State management</li>
        <li><strong>Dio</strong> - HTTP client for API calls</li>
        <li><strong>DummyJSON API</strong> - Fake backend data</li>
    </ul>

<h2>Download APK</h2>
    <p><a href="https://drive.google.com/file/d/1lrqeNDZDx4GJ78NEi39GRDcNo_qXIT5D/view?usp=sharing">Download APK</a></p>

  <h2>Setup Instructions</h2>
    <pre><code>git clone https://github.com/SDE-Ashik/Machine-Test--Kings-Labs.git
cd flutter-app
flutter pub get
flutter run</code></pre>

</body>

</html>
