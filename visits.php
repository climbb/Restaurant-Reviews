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
    <h1>COMP3278 Restaurant System - Customers</h1>
    <?php
    try {
      require( 'config.php' );

      echo '<form action="visits.php" method="get">
        <input type="search" name="comments">
        <input type="submit" value="Search">
      </form>';

      // === Your code starts here ==========
      $mysqli = new mysqli( $db_config['host'],
                      $db_config['user'],
                      $db_config['pass'],
                      $db_config['name'] );

      if ( $mysqli->connect_error ) {
        throw new Exception( 'Error connecting DB: '.$mysqli->connect_error );
      }
      $mysqli->set_charset( 'utf8' );
		
	  $search = null;
	  $restaurant = null;
	  $branch = null;
	  $customer = null;
	  
	  $sqlCode = "SELECT V.date, C.name, R.name AS restaurant, B.location, V.comments, V.amount, V.score
FROM visits V
LEFT OUTER JOIN customers C
ON V.customer_id = C.customer_id
LEFT OUTER JOIN restaurants R
ON V.restaurant_id = R.restaurant_id
LEFT OUTER JOIN branches B
ON (V.restaurant_id = B.restaurant_id AND V.branch_no = B.branch_no)";

		if ( isSet( $_GET['comments'] ) ) {
			$search = $_GET['comments'];
			$search = "%{$search}%";
			$sqlCode = $sqlCode . " WHERE V.comments LIKE ?";
		}
		
		if ( isSet( $_GET['restaurant'] ) ) {
			if ( isSet( $_GET['branch'] ) ) {
				$branch = $_GET['branch'];
				$restaurant = $_GET['restaurant'];
				$sqlCode = $sqlCode . " WHERE R.restaurant_id = ? AND B.branch_no = ?";
			} else
			{
			$restaurant = $_GET['restaurant'];
			$sqlCode = $sqlCode . " WHERE R.restaurant_id = ?";
			}
		}
		
		if ( isSet( $_GET['customer'] ) ) {
			$customer = $_GET['customer'];
			$sqlCode = $sqlCode . " WHERE C.customer_id = ?";
		}
		
		$sqlCode = $sqlCode . " ORDER BY V.date DESC";
		
		$stmt = $mysqli->prepare($sqlCode);
		
		
		if ( isSet( $_GET['comments'] ) )
			$stmt->bind_param('s', $search);
			
		if ( isSet( $_GET['restaurant'] ) ){
			if ( isSet( $_GET['branch'] ) ){
				$stmt->bind_param('ii', $restaurant, $branch);}
			else
				$stmt->bind_param('i', $restaurant);
		}
		
		if ( isSet( $_GET['customer'] ) )
			$stmt->bind_param('i', $customer);
		
		$stmt->bind_result($date, $customer, $restaurant, $location, $comments, $amount, $score);
		$stmt->execute();
		
		echo '<table><tr><th><b>date</b></th><th><b>customer</b></th><th><b>restaurant</b></th><th><b>location</b></th><th><b>comments</b></th><th><b>amount</b></th><th><b>score</b></th></tr>';
		while ($stmt->fetch()) {
			$date = htmlspecialchars($date);
			$customer = htmlspecialchars($customer);
			$restaurant = htmlspecialchars($restaurant);
			$location = htmlspecialchars($location);
			$comments = htmlspecialchars($comments);
			$amount = htmlspecialchars($amount);
			$score = htmlspecialchars($score);
			echo "<tr><td>$date</td><td>$customer</td><td>$restaurant</td><td>$location</td><td>$comments</td><td>$amount</td><td>$score</td></tr>";
		}
		echo '</table>';
		
		
      // === Your code ends here ============

    } catch ( Exception $e ) {
      echo $e->getMessage();
    }

  ?>
  </body>
</html>
