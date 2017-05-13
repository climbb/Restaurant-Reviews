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

      // === Your code starts here ==========
      $mysqli = new mysqli( $db_config['host'],
                      $db_config['user'],
                      $db_config['pass'],
                      $db_config['name'] );

      if ( $mysqli->connect_error ) {
        throw new Exception( 'Error connecting DB: '.$mysqli->connect_error );
      }
      $mysqli->set_charset( 'utf8' );
	
	$order = NULL;
	
	$sqlCode = "SELECT * FROM (
SELECT C.customer_id, C.name, IF((SELECT count(*) FROM diamonds WHERE customer_id = C.customer_id)=0, IF((SELECT count(*) FROM pearls WHERE customer_id = C.customer_id)=0,'Basic','Pearl'),'Diamond') AS level, C.birthday, REF.name AS referrer, REF.date AS 'referral date', REFCOUNT.referral_count AS 'referral count', CV.COU AS visits, FAV.name AS favorite
FROM  (SELECT customer_id, count(*) AS COU FROM visits GROUP BY customer_id) CV,
	(
		SELECT t.customer_id, rest.name
		FROM restaurants rest, (
			SELECT customer_id, MIN(amount) as MinAmount
			FROM
				(SELECT SCR.customer_id, V.restaurant_id, V.amount
					FROM (
						SELECT customer_id, MAX(score) AS maxscr
						FROM visits
						GROUP BY customer_id
						) SCR, visits V
					WHERE V.score = SCR.maxscr AND V.customer_id = SCR.customer_id) RTable
			GROUP BY customer_id
			)r
		INNER JOIN (SELECT SCR.customer_id, V.restaurant_id, V.amount
					FROM (
						SELECT customer_id, MAX(score) AS maxscr
						FROM visits
						GROUP BY customer_id
						) SCR, visits V
					WHERE V.score = SCR.maxscr AND V.customer_id = SCR.customer_id) t
		ON t.customer_id = r.customer_id AND t.amount = r.MinAmount
		WHERE t.restaurant_id = rest.restaurant_id
) FAV, restaurants R, customers C
LEFT OUTER JOIN
	(SELECT CR.customer_id, C.name, CR.date
	FROM customers_referrers CR, customers C
	WHERE CR.referrer_customer_id = C.customer_id) REF
ON C.customer_id = REF.customer_id
LEFT OUTER JOIN
	(SELECT C.customer_id, count(*) AS referral_count
	FROM customers C, customers_referrers CR
	WHERE C.customer_id = CR.referrer_customer_id
	GROUP BY C.customer_id
)REFCOUNT
ON C.customer_id = REFCOUNT.customer_id

WHERE C.customer_id = CV.customer_id AND C.customer_id = FAV.customer_id 
GROUP BY C.customer_id) T";
	
	  if ( isSet( $_GET['order'] ) ) {
		$order = $_GET['order'];
		if($order == "visits")
			$sqlCode = $sqlCode . ' ORDER BY visits DESC';
		else if($order == "name")
			$sqlCode = $sqlCode . ' ORDER BY name';
	  }  else
	  
		$sqlCode = $sqlCode . ' ORDER BY name';

	  $stmt = $mysqli->prepare($sqlCode);

		$stmt->bind_result($id, $name, $level, $birthday, $referrer, $referral_date, $referral_count, $visits, $favorite);
		$stmt->execute();
		
		echo "<table><tr><th><b><a href='./customers.php?order=name'>name</a></b></th><th><b>level</b></th><th><b>birthday</b></th><th><b>referrer</b></th><th><b>referral date</b></th><th><b>referral count</b></th><th><b><a href='./customers.php?order=visits'>visits</a></b></th><th><b>favorite</b></th></tr>";
		while ($stmt->fetch()) {
			$id = htmlspecialchars($id);
			$name = htmlspecialchars($name);
			$level = htmlspecialchars($level);
			$birthday = htmlspecialchars($birthday);
			$referrer = htmlspecialchars($referrer);
			$referral_date = htmlspecialchars($referral_date);
			$referral_count = htmlspecialchars($referral_count);
			$visits = htmlspecialchars($visits);
			$favorite = htmlspecialchars($favorite);
			echo "<tr><td>$name</td><td>$level</td><td>$birthday</td><td>$referrer</td><td>$referral_date</td><td>$referral_count</td><td><a href='./visits.php?customer=$id'>$visits</a></td><td>$favorite</td></tr>";
		}
		echo '</table>';
		
      // === Your code ends here ============

    } catch ( Exception $e ) {
      echo $e->getMessage();
    }

  ?>
  </body>
</html>
