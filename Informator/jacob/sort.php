<?php
$newselect=$_POST["selectNew"];
require("database.php");
if($newselect=="2")
{
$sql= "SELECT name, value from telephone order by value DESC";   
}
else
{
    $sql= "SELECT name, value from telephone order by value ASC";     
} 
$result = $con->query($sql);
    if($result->num_rows>0)
    {
        echo "<table>";
        while($row=$result->fetch_assoc())
        {
            echo "<tr><td>". $row["name"] ."</td>"."<td>". $row["value"]."<td><tr>"; 
        }
        echo "</table>";
    }
    else
    {
        echo "0 result";
    }
    $con->close();
?>