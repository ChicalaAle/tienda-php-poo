<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/styles.css">
    <title>Tienda de camisetas</title>
</head>
<body>
    <div id="container">
        <!-- CABECERA -->

        <header id="header">
            <div id="logo">
                <img src="assets/img/camiseta.png" alt="Camiseta logo">
                <a href="index.php">
                    <h1>Tienda de camisetas</h1>
                </a>
            </div>
        </header>

        <!-- MENU -->

        <nav id="menu">
            <ul>
                <li>
                    <a href="">INICIO</a>
                </li>
                <li>
                    <a href="">Categoria 1</a>
                </li>
                <li>
                    <a href="">Categoria 2</a>
                </li>
                <li>
                    <a href="">Categoria 3</a>
                </li>
                <li>
                    <a href="">Categoria 4</a>
                </li>
                <li>
                    <a href="">Categoria 5</a>
                </li>
            </ul>
        </nav>


        <div id="content">
            <!-- BARRA LATERAL -->
            <aside id="lateral">
                <h3>Entrar a la web</h3>
                <div id="login" class="block-aside">
                    <form action="" method="POST">
                        <label for="email">Email</label>
                        <input type="email" name="email" />

                        <label for="password">Contraseña</label>
                        <input type="password" name="password" />

                        <input type="submit" value="Entrar">
                    </form>

                <ul>
                    <li><a href="#">Mis pedidos</a></li>
                    <li><a href="#">Gestionar pedidos</a></li>
                    <li><a href="#">Gestionar categorias</a></li>
                </ul>

                </div>

            </aside>

            <!-- CONTENIDO CENTRAL -->

            <div id="central">
            <h1>Productos destacados</h1>
                <div class="product">
                    <img src="assets/img/camiseta.png" alt="">
                    <h2>Camiseta Azul Ancha</h2>
                    <p>30 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                <div class="product">
                    <img src="assets/img/camiseta.png" alt="">
                    <h2>Camiseta Azul Ancha</h2>
                    <p>30 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                <div class="product">
                    <img src="assets/img/camiseta.png" alt="">
                    <h2>Camiseta Azul Ancha</h2>
                    <p>30 euros</p>
                    <a href="" class="button">Comprar</a>
                </div>

                
            </div>

        </div>
        

        <!-- PIE DE PÁGINA -->

        <footer id="footer">
            <p>Desarrollado por Alejandro Chicala &copy; <?= date('Y')?></p>
        </footer>
    </div>
</body> 
</html>