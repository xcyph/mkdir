<?php
/** bepaal zelf of je in het zelfde pagina wilt blijven als de create content is doorgevoerd anders moet je een create-action (verwerken) aanmaken */

//begin sessie
session_start();

//controleer of de gebruiker is ingelogd, zo niet, stuur hem dan door naar de login pagina
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
//connectie met de database
require_once "config.php";

//maak variable met lege waarde
$studentnr = "";
$studentnr_err = "";


//Als de formulier verstuurd is
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    //valideer data






}



?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Create Record</title>
    <!--Bootstrap cdn -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
/* Some default style that u can change later however you want   */
.wrapper{
    width: 600px;
    margin: 0 auto;
}
</style>
<body>
<div class="wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h2>Create record</h2>
                <p>Lorem ipsum informatie</p>
                <!--Als de action wordt uitgevoerd in de zelfde pagina-->
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                    <div class="form-group">
                        <label>Lorem ipsum</label>
                        <input type="text" name="studentnr" class="form-control <?php echo (!empty($studentnr_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $studentnr; ?>">
                        <span class="invalid-feedback"><?php echo $studentnr_err;?></span>

                    </div>

                    <input type="submit" class="btn btn-primary" value="Submit">
                    <a href="index.php" class="btn btn-secondary ml-2">Cancel</a>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
