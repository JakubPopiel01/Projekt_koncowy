<?php
error_reporting(0);
require_once "database.php";
$q = $_REQUEST["q"];
$sql="Select name from telephone";
$sql1="SELECT value FROM telephone ORDER BY value ASC";
$result=$con->query($sql);
$result1=$con->query($sql1);
while($row=$result->fetch_assoc())
{
    $a[]=$row['name'];
}
$hint = "";
if ($q !== "") {
  $q = strtolower($q);
  $len=strlen($q);
  foreach($a as $name) {
    if (stristr($q, substr($name, 0, $len))) {
      if ($hint === "") {
        $hint = $name;
      } else {
        $hint .= ",$name";
      }
    }
  }
}
while($row1=$result1->fetch_assoc())
{
    $a1[]=$row1['value'];
}
$hint1 = "";
if ($q1 !== "") {
  $q1 = strtolower($q1);
  $len1=strlen($q1);
  foreach($a1 as $name1) {
    if (stristr($q1, substr($name1, 0, $len1))) {
      if ($hint1 === "") {
        $hint1 = $name1;
      } else {
        $hint1 .= ",$name1";
      }
    }
  }
}
echo $hint === "" ? "brak sugesti" : $hint;
@session_start();
$_SESSION['hint']=$hint;


?>