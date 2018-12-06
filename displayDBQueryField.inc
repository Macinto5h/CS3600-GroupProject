<!--IMPORTANT FILE for displaying queries, DO NOT MODIFY THIS -mac -->
<?php
  function display_db_table($tablename,$connect){
    $query = "Select * From $tablename";
    display_db_query($query,$connect,True,2);
  }
  function display_db_query($query,$connect,$head,$border){
    echo "<h2>The query is $query</h2>";
    echo "<br>";
    echo "<h2>The result for this query is as follows:</h2>";
    echo "<br>";
    $result = mysqli_query($connect,$query);
    print ("<center>");
    print ("<table border=$border>\n");
    if ($head){
      print ("<tr>\n");
      while ($fieldinfo=mysqli_fetch_field($result))
        printf ("<td><b>$fieldinfo->name</b></td>");
      print("</tr>\n");
    }
    while ($row=$result->fetch_assoc()){
      print ("<tr>\n");
      $columns=array_keys($row);
      foreach($columns as $column){
        print ("<td>{$row[$column]}</td>");
      }
      print ("</tr>\n");
    }
    print("</table>\n");
    print("</center>");
  }
?>
