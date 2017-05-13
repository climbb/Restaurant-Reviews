<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>COMP3278 A2</title>
    <style>
      h1:first-child {
        text-align: center;
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
    <h1>COMP3278 Restaurant System - Branches</h1>
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
	  

      // === Your code ends here ============

	 $restaurant = NULL;
	 $sqlCode = 'SELECT restaurant_id, name FROM restaurants';
	 
	if ( isSet( $_GET['restaurant'] ) ) {
		$restaurant = $_GET['restaurant'];
		$sqlCode = $sqlCode . ' WHERE restaurant_id = ' . $restaurant;
	} 
	
	$sqlCode = $sqlCode . ' ORDER BY name';
	
	$result = $mysqli->query($sqlCode);
	  
	 if($result === false) {
			throw new Exception( 'Error querying DB: '.$mysqli->error );
	}
	
	$stmt = $mysqli->prepare( 'SELECT B.branch_no, B.location, B.seats, IFNULL(V.visits, 0) AS visits, IFNULL(SC.score,0) AS score
		FROM branches B
		LEFT OUTER JOIN (
			SELECT  branch_no, COUNT(*) AS visits
			FROM  visits
			WHERE restaurant_id = ?
			GROUP BY branch_no)
		V
		ON B.branch_no=V.branch_no
		LEFT OUTER JOIN
		(
			SELECT  branch_no, AVG(score) AS score
			FROM  visits
			WHERE restaurant_id = ?
			GROUP BY branch_no)
		SC
		ON B.branch_no=SC.branch_no
		WHERE B.restaurant_id = ?
		ORDER BY V.visits DESC' );
		
		$loop_restaurant_id= null;
		$stmt->bind_param('iii', $loop_restaurant_id, $loop_restaurant_id, $loop_restaurant_id);
		$stmt->bind_result($branch_no, $location, $seats, $visits, $score);
		
	while ( $row = $result->fetch_assoc() ) {
	
		$name = htmlspecialchars($row['name']);
		echo "<h1>$name</h1><br>";
		$loop_restaurant_id = $row['restaurant_id'];
		$stmt->execute();
		
		echo '<table><tr><th><b>location</b></th><th><b>seats</b></th><th><b>visit</b></th><th><b>score</b></th></tr>';
		while ($stmt->fetch()) {
			$location = htmlspecialchars($location);
			$seats = htmlspecialchars($seats);
			$visits = htmlspecialchars($visits);
			$score = htmlspecialchars($score);
			echo "<tr><td>$location</td><td>$seats</td><td><a href='./visits.php?branch=$branch_no&restaurant=$loop_restaurant_id'>$visits</a></td><td>$score</td></tr>";
		}
		echo '</table>';
	}
	
    } catch ( Exception $e ) {
      echo $e->getMessage();
    }

  ?>
  </body>
</html>
