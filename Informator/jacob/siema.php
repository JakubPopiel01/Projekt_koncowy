<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
$(document).ready(function()
    {
        $("select").change(function()
    {  var select=document.getElementById("gie").value;
        $("#srodkowy").load("sort.php", {
            selectNew: select
        });
    });
    });
</script>    
<meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="styl.css">
    <title>Sklep internetowy</title>
    <script>
function szukaj(str){
    if(str.length==0){
        document.getElementById("wynik").innerHTML="";
        return;
    }else {
var xmlhttp=new XMLHttpRequest();
       xmlhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status ==200)
        {   document.getElementById("wynik").innerHTML=this.responseText;
        }
       };
       xmlhttp.open("GET","telefony.php?q="+str,true);
       xmlhttp.send();
    }  
}

$(document).ready(function()
    {    
        $("#butt").click(function()
    {  var telefony=document.getElementById("wynik").value;
        $("#sklep").load("zdjecia.php", {
            telNew: telefony
        });
    });
    });


    </script>
</head>
<body>
    <div id="kont">    
    <div id="lewy">
        
        <a href="galeria.php">Strona Główna</a> <br>
        <?php
        @session_start();
        if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true)
        {
         
        
        ?><a href="logout.php" id="logout">Wyloguj</a>
        <?php } 
        else
        {?>
        <a href="login.php" id="login">Zaloguj</a>
        <?php
        }
        ?>


    </div>
    <div id="srodkowy">
    <table>
    <?php
    require("database.php"); 
    $sql= "SELECT name, value from telephone";   
    $result = $con->query($sql);
    if($result->num_rows>0)
    {
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
    </table>
    </div>
    <div id="prawy">
        <select id="gie" name="luj"> 
        
            <option value="1">sortuj od najmniejszej ceny</option>
            <option value="2">sortuj od najwyzszej ceny</option>

</select>
    </div>
    </div>
    </div>
    <div id="stopka">
        <h3>Wyszukaj:
        <input type="text" onkeyup="szukaj(this.value)" id="ok">
        <button id="butt">Wyszukaj</button>
            </h3> 
        <p id="wynik"></p>
    </div>
    <div id="sklep">
 
 
 </div>
</body>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="./skrypt.js"></script>
</html>