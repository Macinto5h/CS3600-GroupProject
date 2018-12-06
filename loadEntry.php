<!DOCTYPE html>
<html>
  <head>
    <title>Enter Data</title>
    <link rel="icon" href="glove.png" />
    <link rel="stylesheet" href="primaryStyle.css" />
    <script src="interface.js"></script>
  </head>
  <body>
    <nav>
      <div class="menu">
        <a href="DatabaseProjectMain.html">Home</a>
        <a class="active" href="DatabaseEnterData.html" >Enter Data</a>
        <a href="DatabaseQuery.html">Query</a>
        <a href="https://github.com/Macinto5h/CS3600-GroupProject" target="_blank">GitHub</a>
        <Form Method="post" Action="loadEntry.php">
          <button name="customer" type="submit" value="customer" id="mac">Customer Sign-up</button>
        </Form>
      </div>
    </nav>
    <div class="bananaland">
    <Form Method="post" Action="loadEntry.php">
      <button class="ilikebigbuttons" id="buttonOne" name="customer" type="submit" value="customer">Add Customer</button>
      <button class="ilikebigbuttons" id="buttonTwo" name="employee" type="submit" value="employee">Add Employee</button>
      <button class="ilikebigbuttons" id="buttonThree" name="product" type="submit" value="product">Add Product</button>
    </Form>
    <?php
      if (isset($_POST['customer'])) { ?>
        <div class="peter">
         <form action="customerRegistration.php" method="post" enctype="multipart/form-data">
         <p>First Name: <input name="firstName" type="text" placeholder="First Name" autofocus required></p>
         <p>Last Name: <input name="lastName" type="text" placeholder="Last Name" autofocus required></p>
         <p>Password: <input name="password" type="password" required></p>
         <p>Phone Number: <input name="phoneNumber" type="number" placeholder="Phone Number" required></p>
         <p>Email: <input name="email" type="email" placeholder="email" required></p>
         <p>Address: <input name="address" type="text" placeholder="address" required></p>
         <p>Receives Mail: Yes <input name="receivesMail" type="radio" value="1" required></p>
         <p>Receives Mail: No <input name="receivesMail" type="radio" value="0" required></p>
         <p><button name="submit" type="submit" value="Submit">Submit</button><p>
         </form>
       </div>
  <?php
      } else if (isset($_POST['employee'])){ ?>
        <div class="peter">
         <form action="employeeRegistration.php" method="post" enctype="multipart/form-data">
         <p>First Name: <input name="firstName" type="text" placeholder="First Name" autofocus required></p>
         <p>Last Name: <input name="lastName" type="text" placeholder="Last Name" autofocus required></p>
         <p>Password: <input name="password" type="password" required></p>
         <p>Phone Number: <input name="phoneNumber" type="number" placeholder="Phone Number" required></p>
         <p>Email: <input name="email" type="email" placeholder="email" required></p>
         <p>Address: <input name="address" type="text" placeholder="address" required></p>
         <p>Pay rate: <input name="payRate" type="number" placeholder="Pay rate" step=".01" min="0.01" required></p>
         <p>Position: <input name="position" type="text" placeholder="position" required></p>
         <p> Department
             <Input list="dept" required name="dept" placeholder="Department">
               <datalist id="dept">
                 <option>Marketing</option>
                 <option>Finances</option>
                 <option>IT</option>
                 <option>Warehouse</option>
                 <option>Customer Service</option>
                 <option>Administration</option>
                 <option>Retail</option>
                 <option>Human Resources</option>
                 <option>Research</option>
                 <option>Shipping</option>
               </datalist>
         </p>
         <p>Start Date: <input name="startDate" type="date" required></p>
         <p>This data entry requires employee credentials:</p>
         <p>Email: <input name="emMail" type="email" required></p>
         <p>Password: <input name="emPassword" type="password" required></p>
         <p><button name="submit" type="submit" value="Submit">Submit</button><p>
         </form>
       </div>
  <?php
      } else { ?>
        <div class="peter">
         <form action="productRegistration.php" method="post" enctype="multipart/form-data">
         <p>Price: <input name="price" type="number" placeholder="price" step=".01" min="0" required></p>
         <p>Name: <input name="name" type="text" placeholder="name" required></p>
         <p>Artist: <input name="artist" type="text" placeholder="artist" required></p>
         <p>Stock: <input name="stock" type="number" placeholder="stock" min="0" required></p>
         <p>Release Date: <input name="releaseDate" type="date" placeholder="release date" required></p>
         <p>This data entry requires employee credentials:</p>
         <p>Email: <input name="emMail" type="email" required></p>
         <p>Password: <input name="emPassword" type="password" required></p>
         <p><button name="submit" type="submit" value="Submit">Submit</button><p>
         </form>
       </div>
  <?php
      } ?>
    </div>
  </body>
</html>
