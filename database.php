<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$connection = mysqli_connect('localhost', 'root', '', 'Grocery_assignment_1');

if (!$connection) {
    http_response_code(500);
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    processOrder();
    exit();
}

$searchTerm = isset($_GET['search']) ? $_GET['search'] : null;
$category = isset($_GET['category']) ? $_GET['category'] : null;

if ($searchTerm) {
    $sql = "SELECT * FROM products WHERE name LIKE ?";
    $stmt = $connection->prepare($sql);
    if (!$stmt) {
        http_response_code(500);
        die("Statement preparation failed: " . $connection->error);
    }
    $searchTerm = '%' . $searchTerm . '%';
    $stmt->bind_param("s", $searchTerm);
} elseif ($category) {
    $sql = "SELECT * FROM products WHERE category = ?";
    $stmt = $connection->prepare($sql);
    if (!$stmt) {
        http_response_code(500);
        die("Statement preparation failed: " . $connection->error);
    }
    $stmt->bind_param("s", $category);
} else {
    http_response_code(400);
    die("Invalid request");
}

$stmt->execute();
$result = $stmt->get_result();
$data = array();

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

header('Content-Type: application/json');
echo json_encode($data);

$stmt->close();
mysqli_close($connection);


function processOrder()
{

  $name = $_POST['name'];
  $address = $_POST['address'];
  $suburb = $_POST['suburb'];
  $state = $_POST['state'];
  $country = $_POST['country'];
  $phone = $_POST['phone'];
  $email = $_POST['email'];
  $cart = json_decode($_POST['cart'], true);


  $subject = "Order Confirmation";
  $message = "Thank you for odering with Max's Farm!\n\n";
  $message .= "Name: $name\n";
  $message .= "Address: $address, $suburb, $state, $country\n";
  $message .= "Phone: $phone\n";
  $message .= "Email: $email\n\n";
  $message .= "Order Details:\n";

  foreach ($cart as $item) {
    $message .= "{$item['name']} ({$item['quantity']} x {$item['count']}) - $" . ($item['price'] * $item['count']) . "\n";
  }

  $headers = "From: your_email@example.com\r\n";
  $headers .= "Content-Type: text/plain; charset=utf-8\r\n";

  if (mail($email, $subject, $message, $headers)) {
    echo "Order received and email sent.";
  } else {
    echo "Error processing the order. Please try again.";
  }
}
?>

