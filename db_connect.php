<?php
$servername = "localhost";
$username = "root";  // El nombre de usuario predeterminado en XAMPP es 'root'
$password = "";      // El password predeterminado es vacío
$dbname = "guia_patzcuaro";  // El nombre de tu base de datos

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conectado exitosamente";
?>

<?php
$servername = "localhost";
$username = "root";  // El nombre de usuario predeterminado en XAMPP es 'root'
$password = "";      // El password predeterminado es vacío
$dbname = "guia_patzcuaro";  // El nombre de tu base de datos

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conectado exitosamente";
?>

<?php
include('db_connect.php');  // Incluir el archivo de conexión

$sql = "SELECT nombre, descripcion FROM titulo";  // Suponiendo que tienes una tabla 'lugares'
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<a href='" . $row['enlace'] . "' style='text-decoration: none; color: inherit;'>
                <div class='section'>
                    <h2>" . $row['nombre'] . "</h2>
                    <p>" . $row['descripcion'] . "</p>
                </div>
              </a>";
    }
} else {
    echo "No hay resultados";
}

$conn->close();
?>
