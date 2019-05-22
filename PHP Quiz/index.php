<?php
    include('header.php');
    require('dbconfig.php');

    if (isset($_POST["proceed"])) {
      try{
          $username = $_POST['username'];

          $sql = "SELECT username FROM users WHERE username = :username";
          $check = $db->prepare($sql);
          $check->bindParam(':username',$username);
          $check->execute();

          if ($check->rowCount() > 0) {
            $err_username = '<div class="alert alert-warning alert-dismissible col-md-1.5 text-center" role="alert">
                          <span type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></span>
                          <strong>Warning!</strong> Sorry, username already exist!
                        </div>';
            echo $err_username;
          }else {
            // Create prepared statement
            $sql = "INSERT INTO users (username) VALUES (:username)";

            $stmt = $db->prepare($sql);

            // Bind parameters to statement
            $stmt->bindParam(':username', $_POST['username']);

            // Execute the prepared statement
            $stmt->execute();
            header("Location:/choose.php");
          }

      } catch(PDOException $e){
        die("ERROR: Could not able to execute $sql. " . $e->getMessage());
      }

      unset($db);
    }

?>

<main>
<div class="container">
    <div class="jumbotron bg-light">
        <div class="text-center">
          <a href="index.php" class="link-unstyled">
          <hr>
          <h1 class="display-4">Encore: Quiz Application</h1>
          <hr>
        </a>
          <h5 class="text-muted">Please enter your username before you take a quiz!</h5>
          <form class="" action="" method="post">
            <input type="text" class="form-group" id="username" name="username" value="" placeholder="Username" required><br>
            <input class="btn btn-outline-primary col-md-1.5 py-1" type="submit" name="proceed" value="Take a Quiz!">
          </form>
        </div>
  </div>

  <div class="jumbotron bg-light">
      <h4 class="lead">Here are the following available resources before taking the quiz:</h4>
      <hr>
      <div class="row justify-content-center">

        <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP" target="_blank" class="link-unstyled">
          <div class="col-md-6 col-lg-4 col-xl-3 text-justify">
            <h2>HTTP</h2>
            <p>HTTP is a protocol for transmitting resources such as HTML. In this website you can learn that HTTP can be used for other purposes that follows a client-server model.</p>
            <p class="text-center"><a href="https://developer.mozilla.org/en-US/docs/Web/HTTP" target="_blank" class="btn btn-outline-primary">Learn More &raquo;</a></p>
          </div>
        </a>

        <a href="https://developer.mozilla.org/en-US/docs/Learn/HTML" target="_blank" class="link-unstyled">
          <div class="col-md-6 col-lg-4 col-xl-3 text-justify">
            <h2>HTML</h2>
            <p>HTML is the most basic building block of the web that could describe the structure of the web pages. This website will guide you through the fundamental technology used to define the structure of a web page.</p>
            <p class="text-center"><a href="https://developer.mozilla.org/en-US/docs/Learn/HTML" target="_blank" class="btn btn-outline-primary">Learn More &raquo;</a></p>
          </div>
        </a>

        <a href="https://developer.mozilla.org/en-US/docs/Learn/CSS" target="_blank" class="link-unstyled">
          <div class="col-md-6 col-lg-4 col-xl-3 text-justify">
            <h2>CSS</h2>
        <p>CSS describes the presentation of web pages rendered on a media that can save you a lot of time and effort. CSS is the first technology you should start to learn after HTML.</p>
          <p class="text-center"><a href="https://developer.mozilla.org/en-US/docs/Learn/CSS" target="_blank" class="btn btn-outline-primary">Learn More &raquo;</a></p>
        </div>
      </a>

      <a href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript" target="_blank" class="link-unstyled">
        <div class="col-md-6 col-lg-4 col-xl-3 text-justify">
          <h2>JavaScript</h2>
          <p>JavaScript is the most widely used for client-side scripting language. This website will help you to learn Javascript so that you can make a complicate things on the web pages.</p>
          <p class="text-center"><a href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript" target="_blank" class="btn btn-outline-primary">Learn More &raquo;</a></p>
        </div>
      </a>
    </div>
</div>

</div>
</main>

<?php
    include('footer.php');
?>
