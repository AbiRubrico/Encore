<?php
    include('header.php');
    require('dbconfig.php');

    if (isset($_POST['q1'])) {
      header("Location:/quizA.php");
    }

    if (isset($_POST['q2'])) {
      header("Location:/quizB.php");
    }

    if (isset($_POST['q3'])) {
      header("Location:/quizC.php");
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
          <h5 class="text-muted">Before you proceed please choose a number of questions below:</h5>
          <form class="m-1" action="" method="post">
            <input class="btn btn-outline-primary col-md-1.5 py-1 px-3" type="submit" name="q1" value="10">
            <input class="btn btn-outline-primary col-md-1.5 py-1 px-3" type="submit" name="q2" value="20">
            <input class="btn btn-outline-primary col-md-1.5 py-1 px-3" type="submit" name="q3" value="30">
          </form>
          <a href="index.php" class="link-unstyled"><input class="btn btn-outline-primary col-md-1 p-1 m-2" type="submit" name="back-btn" value="Back"></a>
        </div>
  </div>
</div>
</main>

<?php
    include('footer.php');
?>
