<?php include('protect.php');?>
<?php include "php/read.php"; ?>

<?php
            
        $username = "root";
        $password = "";
        $hostname = "localhost";

            // Conexão ao banco de dados.
        $dbhandle = mysql_connect($hostname, $username, $password)
            or die("Não foi possível conectar ao MySQL!");
                    
            // Seleciona o banco de dados.
        $selected = mysql_select_db("painelcupon", $dbhandle)
            or die("Não foi possível selecionar o banco de dados restaurante!");


$iTripId = $_GET["iTripId"];
$iUserId = $_POST["iUserId"];
$vRideNo = $_POST["vRideNo"];
$tStartDate = $_POST["tStartDate"];
$tSaddress = $_POST["tSaddress"];
$tStartDate = $_POST["tDaddress"];
$tStartDate = $_POST["iActive"];
$tStartDate = $_POST["status_cupom"];
$tStartDate = $_POST["usado_onde"];

//agora vomos salvar
$sql = mysql_query("UPDATE trips SET iUserId ='$iUserId', vRideNo = '$vRideNo', tStartDate = '$tStartDate', tSaddress = '$tSaddress', tDaddress = '$tDaddress', iActive = '$iActive', status_cupom = '$status_cupom', usado_onde = '$usado_onde' WHERE iTripId = $iTripId");

      if($sql) {
            //agora vamos ver se salvou
        echo "<h1>Registro foi alterado com sucesso!</h1>";
        mysql_close($dbhandle);      
        } else {
        
        echo 'ERROR:'. mysql_error();
        mysql_close($dbhandle);    
        
        }

      
?>
