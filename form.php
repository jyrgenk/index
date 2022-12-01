<?php
if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
  header( 'HTTP/1.0 403 Forbidden', TRUE, 403 );
  die ("<h2>Access Denied!</h2> This file is protected and not available to public.");
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div>
    <h1>Please enter your name and pick the sectors you are currently involved in.</h1>
    <form action="" method="post" id="form">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" value="<?php echo($userData['name'] ?? '')?>" required>
        <label for="sectors">Select sectors:</label>
        <select name="sectors[]" id="sectors" multiple size="10" required>
          <?php
            if ($sectors->num_rows > 0) {
                while ($data = $sectors->fetch_assoc()) {
                    $selected = '';
                    if (isset($userData['sectors']) && in_array($data['sectorValue'], $userData['sectors'])) {
                        $selected = 'selected';
                    }
                    echo "<option value='".$data['sectorValue']."'".$selected.">".$data['sectorName']."</option>";
                }
            } else {
                echo "<option disabled>No options available</option>";
            }
          ?>
        </select>
        <label for="terms">
            <input type="checkbox" name="terms" id="terms" value="1" <?php if (isset($userData['terms'])) echo('checked')?> required>
            Agree to terms
        </label>
        <input type="submit" value="Save">
    </form>
</div>
</body>
</html>
