<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Login | Upcube - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesdesign" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/backend/images/favicon.ico">

    <!-- Bootstrap Css -->
    <link href="assets/backend/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/backend/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/backend/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    <link href="assets/backend/user/login.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body class="auth-body-bg">
    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6 login-section-wrapper">
                    <div class="brand-wrapper">
                        <img src="assets/backend/user/logo.svg" alt="logo" class="logo">
                    </div>
                    <div class="login-wrapper my-auto">
                        <h1 class="login-title">Log in</h1>
                        <form action="#!">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" class="form-control"
                                    placeholder="email@example.com">
                            </div>
                            <div class="form-group mb-4">
                                <label for="password">Password</label>
                                <input type="password" name="password" id="password" class="form-control"
                                    placeholder="enter your passsword">
                            </div>
                            <input name="login" id="login" class="btn btn-block login-btn" type="button" value="Login">
                        </form>
                        <a href="#!" class="forgot-password-link">Forgot password?</a>
                        <p class="login-wrapper-footer-text">Don't have an account? <a href="#!"
                                class="text-reset">Register here</a></p>
                    </div>
                </div>
                <div class="col-sm-6 px-0 d-none d-sm-block">
                    <img src="assets/backend/user/login.jpg" alt="login image" class="login-img">
                    <p class="text-white font-weight-medium text-center flex-grow align-self-end footer-link">
                        Free <a href="https://www.bootstrapdash.com/" target="_blank" class="text-white">Bootstrap
                            dashboard templates</a> from Bootstrapdash
                    </p>
                </div>
            </div>
        </div>
    </main>
    <!-- JAVASCRIPT -->
    <script src="assets/backend/libs/jquery/jquery.min.js"></script>
    <script src="assets/backend/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/backend/libs/metismenu/metisMenu.min.js"></script>
    <script src="assets/backend/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/backend/libs/node-waves/waves.min.js"></script>

    <script src="assets/backend/js/app.js"></script>

</body>

</html>