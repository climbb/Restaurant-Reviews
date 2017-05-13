<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>COMP3278 A2</title>
    <style>
      h1:first-child {
        margin: 0.5em 0 1.5em;
        border-bottom: 2px solid black;
      }
      h1, h2 {
        text-align: center;
      }
      form {
        text-align: center;
        margin: 0 auto 1em;
      }
      table {
        border-collapse: collapse;
        margin: 0 auto;
      }
      th, td {
        border: 1px solid black;
        padding: 0.25em;
      }
    </style>
  </head>
  <body>
    <h1>COMP3278 Restaurant System - Restaurants</h1>
    <?php
    try {
      require( 'config.php' );

      // === Your code starts here ==========
      $mysqli = new mysqli( $db_config['host'],
                      $db_config['user'],
                      $db_config['pass'],
                      $db_config['name'] );

      if ( $mysqli->connect_error ) {
        throw new Exception( 'Error connecting DB: '.$mysqli->connect_error );
      }
      $mysqli->set_charset( 'utf8' );

	$stmt = $mysqli->prepare( 'SELECT R.restaurant_id, R.name, count(*) AS branches, RC.category AS categories, S.sum AS seats , V.visits
FROM restaurants R, branches B, (
    SELECT restaurant_id, GROUP_CONCAT( RC.category ) AS category
	FROM restaurants_categories RC
	GROUP BY restaurant_id)
RC,(
    SELECT  restaurant_id , SUM(seats) AS sum 
	FROM  branches 
	GROUP BY  restaurant_id)
S,(
    SELECT  restaurant_id , COUNT( * ) AS visits
FROM  visits 
GROUP BY  restaurant_id)
V
WHERE R.restaurant_id = B.restaurant_id AND R.restaurant_id=RC.restaurant_id AND
R.restaurant_id=S.restaurant_id AND
R.restaurant_id=V.restaurant_id
GROUP BY  R.restaurant_id
ORDER BY R.name' );

	$stmt->bind_result($id, $name, $braches, $categories, $seats, $visits);
	$stmt->execute();
	

	echo '<table><tr><th>name</th><th>branches</th><th>categories</th><th>seats</th><th>visits</th></tr>';
	while ($stmt->fetch()) {
	echo "<tr><td>$name</td><td><a href='./branches.php?restaurant=$id'>$braches</a></td><td>$categories</td><td>$seats</td><td><a href='./visits.php?restaurant=$id'>$visits</a></td></tr>";
	}
	echo '</table>';

      // === Your code ends here ============

    } catch ( Exception $e ) {
      echo $e->getMessage();
    }

  ?>
  </body>
</html>
