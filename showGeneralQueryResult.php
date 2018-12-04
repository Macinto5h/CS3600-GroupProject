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
  <head>
    <header>
      <div class="menu">
        <a href="DatabaseProjectMain.html">Home</a>
        <a href="DatabaseEnterData.html" >Enter Data</a>
        <a class="active" href="DatabaseQuery.html">Query</a>
        <a href="https://github.com/Macinto5h/CS3600-GroupProject" target="_blank">GitHub</a>
      </div>
    </header>
  <body>
    <div class="something">
    <Table>
      <tr>
        <Td>
          <?php
            $query=$_POST['query'];
            display_db_query($query, $connect, True, 2);
          ?>
        </td>
      </Tr>
    </Table>
  </div>
  </body>
</html>
