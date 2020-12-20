<?php 
   @session_start();
   require_once("database.php");
   $s=',';
    if(strpos($_SESSION['hint'],$s)==true)
    { 
        $prod=explode(',',$_SESSION['hint']);
       foreach($prod as $value)
       {    
        $sql="Select * from telephone where name='".$value."'";
          $result = $con->query($sql);
          while($row=mysqli_fetch_assoc($result))
    {
      ?>
    <div class="produkt">
        <h1><?php echo $row['name'];?></h1>
        <img class="photo" src=<?php echo $row['link']; ?>>


        </div>
      <?php
    }
          
 
    }
}
   else {

    $sql="Select * from telephone where name='".$_SESSION['hint']."'";
    $result = $con->query($sql);
    while($row=mysqli_fetch_assoc($result))
{   ?>
  <div class="produkt">
      <h1><?php echo $row['name'];?></h1>
      <img class="photo" src=<?php echo $row['link']; ?>>


      </div>
    <?php
  }
}
    $con->close();
?>