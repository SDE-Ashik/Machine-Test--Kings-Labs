<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flutter App - Kings Lab Machine Test</title>
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; }
        h1, h2, h3 { color: #333; }
        code { background: #f4f4f4; padding: 5px; border-radius: 5px; }
        pre { background: #f4f4f4; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
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
    
    <h2>2. Home Page</h2>
    <p>The home page fetches product data from:</p>
    <pre><code>https://dummyjson.com/products</code></pre>
    <p>It displays a list of products along with an Edit button for each item.</p>
    <p>Clicking the Edit button navigates the user to the Product Page.</p>
    
    <h2>3. Product Page</h2>
    <p>The product page retrieves details for a selected product using:</p>
    <pre><code>https://dummyjson.com/product/{product_id}</code></pre>
    <p>Users can update product information on this page.</p>
    
    <h2>Technologies Used</h2>
    <ul>
        <li><strong>Flutter</strong> - UI framework</li>
        <li><strong>Riverpod</strong> - State management</li>
        <li><strong>Dio</strong> - HTTP client for API calls</li>
        <li><strong>DummyJSON API</strong> - Fake backend data</li>
    </ul>
    
    <h2>Download APK</h2>
    <p><a href="your_apk_download_link_here">Download APK</a></p>
    
    <h2>Setup Instructions</h2>
    <pre><code>git clone https://github.com/your-repo/flutter-app.git
cd flutter-app
flutter pub get
flutter run</code></pre>
    
</body>
</html>
