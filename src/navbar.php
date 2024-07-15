<?php include("user.php"); ?>

<nav>
    <div class="nav-wrapper">
        <a href="index.php" class="brand-logo">
          &nbsp;&nbsp;<img src="images/logo_gba_footer_blanco.svg" height="65" alt=""/>
        </a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
          <li> <a href="index.php">Registro automático</a> </li>
          <li> <a href="registroManual.php">Registro manual</a> </li>
          <li> <a href="buscar.php">Consultas</a> </li>
          <li id="navbar-img-user">
            <span class="navbar-img-user"><i class="material-icons dp48">account_circle</i> &nbsp; <?=$user?></span>
          </li>
        </ul>
    </div>
</nav>