<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
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
        <a class="normalnie" href="galeria.php">Strona Główna</a> <br>
        <a class="normalnie" href="siema.php">Telefony</a> <br>
        <?php
        @session_start();
        if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true)
        {
         
        
        ?><a class="normalnie" href="logout.php" id="logout">Wyloguj</a>
        <?php } 
        else
        {?>
        <a class="normalnie" href="login.php" id="login">Zaloguj</a>
        <?php
        }
        ?>


    </div>
    <div id="srodkowy">       
    <?php
echo '<img src="sklepy.png" border="0" width="960" height="490" style="float: left">';
?>
    </div>
    <div id="prawy">
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