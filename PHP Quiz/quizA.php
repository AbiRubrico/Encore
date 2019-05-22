<?php
include('header.php');
require('dbconfig.php');
?>

<main>
<div class="container">
    <div class="jumbotron bg-light">
      <a href="index.php" class="link-unstyled">
        <div class="text-center">
          <hr>
          <h1 class="display-4">Encore: Quiz Application</h1>
          <hr>
        </div>
      </a>
    </div>

    <div class="jumbotron bg-light">
      <?php
        $sql = "SELECT DISTINCT * FROM quiz1 ORDER BY RAND() LIMIT 10;";
        $stmt = $db->prepare($sql);
        $stmt->execute();
        shuffle($row);

        while ($row = $stmt->fetchAll()) {
          foreach ($row as $results) {
            print_r($results);
          }
        }
     ?>

</div>
</main>

<?php
include('footer.php');
?>
