<html>
  <head>
    <title>Enter Data</title>
    <link rel="stylesheet" href="primaryStyle.css" />
  </head>
  <body>
    <nav>
      <div class="menu">
        <a href="DatabaseProjectMain.html">Home</a>
        <a class="active" href="DatabaseEnterData.html" >Enter Data</a>
        <a href="DatabaseQuery.html">Query</a>
        <a href="https://github.com/Macinto5h/CS3600-GroupProject" target="_blank">GitHub</a>
      </div>
    </nav>
    <?php
      if (isset($_POST['customer'])) { ?>
        <div class="peter">
         <form action="customerRegistration.php" method="post" enctype="multipart/form-data">
         <p>First Name: <input name="firstName" type="text" placeholder="First Name" autofocus></p>
         <p>Last Name: <input name="lastName" type="text" placeholder="Last Name" autofocus></p>
         <p>Phone Number: <input name="phoneNumber" type="tel" placeholder="Phone Number"></p>
         <p>Email: <input name="email" type="email" placeholder="email"></p>
         <p>Address: <input name="address" type="text" placeholder="address" required></p>
         <p>Receives Mail: Yes <input name="receivesMail" type="radio" value="1" required></p>
         <p>Receives Mail: No <input name="receivesMail" type="radio" value="0" required></p>
         <p><input name="submit" type="submit"><p>
         </form>
       </div>
  <?php
      } else if (isset($_POST['employee'])){ ?>
        <div class="peter">
         <form action="employeeRegistration.php" method="post" enctype="multipart/form-data">
         <p>First Name: <input name="firstName" type="text" placeholder="First Name" autofocus></p>
         <p>Last Name: <input name="lastName" type="text" placeholder="Last Name" autofocus></p>
         <p>Phone Number: <input name="phoneNumber" type="tel" placeholder="Phone Number"></p>
         <p>Email: <input name="email" type="email" placeholder="email"></p>
         <p>Address: <input name="address" type="text" placeholder="address" required></p>
         <p>Pay rate: <input name="payRate" type="number" placeholder="Pay rate" required>
         <p>Position: <input name="position" type="text" placeholder="position" required>
         <p><input name="submit" type="submit"><p>
         </form>
       </div>
  <?php
      } else { ?>
        <div class="peter">
         <form action="productRegistration.php" method="post" enctype="multipart/form-data">
         <p>Price: <input name="price" type="number" placeholder="price" required></p>
         <p>Name: <input name="name" type="text" placeholder="name" required></p>
         <p>Artist: <input name="artist" type="text" placeholder="artist" required></p>
         <p>Stock: <input name="stock" type="number" placeholder="stock" required></p>
         <p>Release Date: <input name="releaseDate" type="date" placeholder="release date"></p>
         <p><input name="submit" type="submit"><p>
         </form>
       </div>
  <?php
      } ?>
  </body>
</html>
