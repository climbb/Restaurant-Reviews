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
    <h1>COMP3278 Restaurant System - Statistics</h1>
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
	
	$result1 = $mysqli->query( 'SELECT COUNT(*) FROM restaurants' );
	
	if($result1 === false) {
	throw new Exception( 'Error querying DB: '.$mysqli->error );
	}
	
	$result2 = $mysqli->query( 'SELECT COUNT(*) FROM branches' );
	
	if($result2 === false) {
	throw new Exception( 'Error querying DB: '.$mysqli->error );
	}
	
	$result3 = $mysqli->query( 'SELECT COUNT(*) FROM customers' );
	
	if($result3 === false) {
	throw new Exception( 'Error querying DB: '.$mysqli->error );
	}
	
	$result4 = $mysqli->query( 'SELECT COUNT(*) FROM visits' );
	
	if($result4 === false) {
	throw new Exception( 'Error querying DB: '.$mysqli->error );
	}
	
	echo "<table><tr><td>Restaurant:</td>";
	
	while ( $row = $result1->fetch_assoc() ) {
	$count = htmlspecialchars($row['COUNT(*)']);
	$count = "<a href=\"restaurants.php\">$count</a>";
	echo "<td>$count</td></tr>";
	}
	
	echo "<tr><td>Branches:</td>";
	
	while ( $row = $result2->fetch_assoc() ) {
	$count = htmlspecialchars($row['COUNT(*)']);
	$count = "<a href=\"branches.php\">$count</a>";
	echo "<td>$count</td></tr>";
	}
	
	echo "<tr><td>Customers:</td>";
	
	while ( $row = $result3->fetch_assoc() ) {
	$count = htmlspecialchars($row['COUNT(*)']);
	$count = "<a href=\"customers.php\">$count</a>";
	echo "<td>$count</td></tr>";
	}
	
	echo "<tr><td>Visits:</td>";
	
	while ( $row = $result4->fetch_assoc() ) {
	$count = htmlspecialchars($row['COUNT(*)']);
	$count = "<a href=\"visits.php\">$count</a>";
	echo "<td>$count</td></tr>";
	}

	
	echo "</table>";


      // === Your code ends here ============

    } catch ( Exception $e ) {
      echo $e->getMessage();
    }

  ?>
  </body>
</html>
