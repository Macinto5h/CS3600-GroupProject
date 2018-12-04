<!--This is the php file that needs to be modified and used for data entry -mac -->
<!Doctype html>
<html>
  <head>
    <title> Database Connection</title>
    <style>
      body{
        background: :-webkit-linear-gradient (left, lightgreen, yellow);
      }
      Form{
        border: solid;
        background: lightyellow;
        width: 400px;
        padding: 20px;
      }
      h1{color: green;}
    </style>
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
        $name=$_POST['name'];
        $email=$_POST['email'];
        $passwd=$_POST['passwd'];
        $gender=$_POST['gender'];
        $contact=$_POST['contact'];
        $education=$_POST['education'];
        $country=$_POST['country'];

        //Notice that we have to use single quotes to enclose the variables. --zs
        $query="INSERT INTO userdata (name, email, password, gender,
        contact, education, country) Values ('$name','$email','$passwd','$gender',
        '$contact','$education','$country')";

        //Check to see if it is executed successfully. --zs
        if(!mysqli_query($connect,$query))
          echo "It is not inserted";
        else echo "<h1>Thanks for your registration!</h1>";

        //Refresh the form after three seconds. --zs
        header ("refresh:3; url=enterData.html");
      ?>
    </body>
  </html>
