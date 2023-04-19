<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

$connection = mysqli_connect('localhost', 'root', '', 'Grocery_assignment_1');

// Check connection
if (!$connection) {
    http_response_code(500);
    die("Connection failed: " . mysqli_connect_error());
}

// Get category from query parameters
$category = $_GET['category'];

// Prepare and execute statement
$sql = "SELECT * FROM products WHERE category = ?";
$stmt = $connection->prepare($sql);
if (!$stmt) {
    http_response_code(500);
    die("Statement preparation failed: " . $connection->error);
}
$stmt->bind_param("s", $category);
$stmt->execute();

// Get results and convert to array
$result = $stmt->get_result();
$data = array();

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

// Output results as JSON
header('Content-Type: application/json');
echo json_encode($data);

// Close statement and connection
$stmt->close();
mysqli_close($connection);
?>

