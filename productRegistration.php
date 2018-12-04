<!--This is the php file that needs to be modified and used for data entry -mac -->
<!Doctype html>
<html>
  <head>
    <title> Database Connection</title>
    <link rel="stylesheet" href="primaryStyle.css" />
    <body>
      <?php
        //Set values for local host, user, and password
        include("phpbook-vars.inc");

        //Connect to a Database
        $database="Team3";

        $connect=mysqli_connect($hostname,$user,$password);
        //Check connection
        //mysqli_connect_errno() return 0, false, if nothing goes wrong
        if (!$connect)
          echo "<b>Error occurred, failed to connect with MySQL:".
          mysqli_connect_error()."</b>";
        //Select the data from the database
        if (!mysqli_select_db($connect,$database))
          echo "Database $database not selected";
        $price=$_POST['price'];
        $name=$_POST['name'];
        $artist=$_POST['artist'];
        $stock=$_POST['stock'];
        $releaseDate=$_POST['releaseDate'];

        //Notice that we have to use single quotes to enclose the variables. --zs
        $query="INSERT INTO Product (price, name, artist, stock,
        releaseDate) Values ('$price','$name','$artist','$stock',
        '$releaseDate')";

        //Check to see if it is executed successfully. --zs
        if(!mysqli_query($connect,$query))
          echo "It is not inserted";
        else echo "<h1>Thanks for your registration!</h1>";

        //Refresh the form after three seconds. --zs
        header ("refresh:3; url=DatabaseEnterData.html");
      ?>
    </body>
  </html>
