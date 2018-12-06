<!--General query php file used for pulling queries, please don't use
a specific query file, this one will work when given the proper
credentials -mac -->
<?php
  //The following brings in the host, user and password
  include("phpbook-vars.inc");

  //The following brings in a function display_db_query
  include("displayDBQueryField.inc");

  //The database to work with
  $database="Team3";

  //1. Set up the db connection
  $connect=mysqli_connect($hostname, $user, $password);

  //2. Connect to the database
  mysqli_select_db($connect, $database);
?>

<html>
  <head>
    <Title>The result of a Query</Title>
    <link rel="stylesheet" href="primaryStyle.css" />
    <link rel="icon" href="glove.png" />
  <head>
    <nav>
      <div class="menu">
        <a href="DatabaseProjectMain.html">Home</a>
        <a href="DatabaseEnterData.html" >Enter Data</a>
        <a class="active" href="DatabaseQuery.html">Query</a>
        <a href="https://github.com/Macinto5h/CS3600-GroupProject" target="_blank">GitHub</a>
        <Form Method="post" Action="loadEntry.php">
          <button name="customer" type="submit" value="customer" id="mac">Customer Sign-up</button>
        </Form>
      </div>
    </nav>
  <body>
    <div class="something">
    <Table>
      <tr>
        <Td>
          <?php
            $emMail=$_POST['emMail'];
            $emPassword=$_POST['emPassword'];

            $encrypted = hash("sha256",$emPassword);
            $query ="SELECT Password From Person P, Employee E Where
            E.Id=P.Id And P.Email='$emMail' And P.Password='$encrypted'";
            $result = mysqli_query($connect,$query);
            $verifyPass = "";
            while($row=$result->fetch_assoc()){
              $verifyPass = $row['Password'];
            }
            //------------
            if ($encrypted!=$verifyPass){
              echo "Invalid credentials provided, data not displayed";
            }else{
              $query = isset($_POST['query']) ? $_POST['query'] : $_POST['queryC'];
              display_db_query($query, $connect, True, 2);
            }
          ?>
        </td>
      </Tr>
    </Table>
  </div>
  </body>
</html>
