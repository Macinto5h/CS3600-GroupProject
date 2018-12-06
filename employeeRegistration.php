<!--This is the php file that needs to be modified and used for data entry -mac -->
<!Doctype html>
<html>
  <head>
    <title>Database Connection</title>
    <link rel="stylesheet" href="primaryStyle.css" />
    <link rel="icon" href="glove.png" />
  </head>
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
        $firstName=$_POST['firstName'];
        $lastName=$_POST['lastName'];
        $phoneNumber=$_POST['phoneNumber'];
        $email=$_POST['email'];
        $address=$_POST['address'];
        $payRate=$_POST['payRate'];
        $position=$_POST['position'];
        $pass=$_POST['password'];
        $deptName=$_POST['dept'];
        $worksSince=$_POST['startDate'];
        $emMail=$_POST['emMail'];
        $emPassword=$_POST['emPassword'];

        //-----------
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
          echo "Invalid credentials provided, data not entered.";
        }else{
          $encrypted = hash("sha256", $pass);
          //Notice that we have to use single quotes to enclose the variables. --zs
          $query="INSERT INTO Person (firstName, lastName, phoneNum, email,
          address,Password) Values ('$firstName','$lastName','$phoneNumber','$email',
          '$address','$encrypted')";
          if(!mysqli_query($connect,$query))
            echo "Failed to Insert into person table";
          else echo "Successful insertion into person table<br>";
          $query="SELECT Id From Person Where firstName='$firstName' and
          lastName='$lastName' and phoneNum='$phoneNumber' and email='$email' AND
          address='$address' and Password='$encrypted'";
          $result = mysqli_query($connect,$query);
          while($row=$result->fetch_assoc()) {
            $Id = $row['Id'];
          }
          $query="INSERT INTO Employee (Id,Payrate,Position) Values ('$Id','$payRate','$position')";
          if(!mysqli_query($connect,$query))
            echo "Failed to Insert into customer table";
          else echo "Successful insertion into customer table<br>";
          echo "IMPORTANT: employee Id is $Id<br>";
          //Search for Id of Department using department name....
          $query ="SELECT Id From Department Where DeptName='$deptName'";
          $result = mysqli_query($connect,$query);
          while($row=$result->fetch_assoc()) {
            $deptId = $row['Id'];
          }
          $query="INSERT INTO WorksIn (EmployeeId, WorksSince, DeptId) Values
          ('$Id','$worksSince','$deptId')";

          if(!mysqli_query($connect,$query))
            echo "Failed to Insert into worksin table";
          else echo "Successful insertion into worksin table";

          //Refresh the form after three seconds. --zs
          header ("refresh:5; url=DatabaseEnterData.html");
      }
      ?>
    </body>
  </html>
