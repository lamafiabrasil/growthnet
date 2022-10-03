<?php include('protect.php');?>
<?php include "php/read.php"; ?>
<?php include "conexao.php" ?>


<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>CHAME O MOTORISTA - CUPONS</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
 
<!-- MENU -->
<nav class="navbar navbar-dark bg-primary">
  <a class="navbar-brand" href="#">
    <img src="logo.png" width="27" height="35" alt="" class="rounded-circle">
  GROWTH NET </a>
  <a href="../sis/read.php" class="btn btn-success">
  Pesquisar revenda
                </a> 
</nav>
<!-- FINAL MENU -->
 
<!-- ALERTA -->
<div class="alert alert-primary" role="alert">
Bem vindo ao Painel, Caso queira sair <a href="logout.php" class="alert-link">clique aqui</a>. para desconectar do sistema.
</div>
<!-- FINAL ALERTA -->
 
<!-- CONTEUDO -->
<div class="container-fluid">
    <br><br>
    <?php if (isset($_GET['success'])) { ?>
        <div class="alert alert-success" role="alert">
            <?php echo $_GET['success']; ?>
        </div>
    <?php } ?>
    <?php if (mysqli_num_rows($result)) { ?>
    <table class="table"  width="600px" border="0">
        <thead class="thead-dark text-white">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">DATA VALIDADE</th>
                <th scope="col">LOGIN</th>
                <th scope="col">SENHA</th>
                <th scope="col">AÇÕES</th>
            </tr>
        </thead>
        <tbody>
            <?php 
 
            if (isset($_POST["usuario_ssh"], $_POST["data_validade"]) && isset($_POST["login"]) && isset($_POST["senha"]))
            updateUserAction($conn, $_POST["id_usuario_ssh"], $_POST["data_validade"], $_POST["login"], $_POST["senha"]);

            $user = findUserAction($conn, $_GET['usuario_ssh']);
 
        while($user = $user->fetch(PDO::FETCH_ASSOC)){
            ?>
 
            <tr scope="row">
                <td><?php echo $user['id_usuario_ssh']; ?></td>
                <td><?php echo $user['data_validade']; ?></td>
                <td><?php echo $user['login']; ?></td>
                <td><?php echo $user['senha']; ?></td>

 
                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                    <a href="./src/pages/user/ver.php?id_usuario=<?=$rows['id_usuario']?>" class="btn btn-success">
                        <span class="material-icons">how_to_reg</span>
                    </a>
                </div>    
            </tr>
            <?php } ?>
        </tbody>
    </table>
    <?php } ?>
 
</div>
<!-- FIM DO CONTEUDO -->
</body>
</html>