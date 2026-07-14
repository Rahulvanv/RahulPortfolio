<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Admin Login</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:Arial,sans-serif;
        }

        body{

            background:#0f172a;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;

        }

        .login-box{

            width:380px;
            background:#1e293b;
            padding:35px;
            border-radius:10px;

        }

        h2{

            color:white;
            text-align:center;
            margin-bottom:25px;

        }

        input{

            width:100%;
            padding:12px;
            margin-bottom:15px;
            border:none;
            border-radius:5px;

        }

        button{

            width:100%;
            padding:12px;
            background:#06b6d4;
            color:white;
            border:none;
            border-radius:5px;
            cursor:pointer;

        }

        button:hover{

            background:#0891b2;

        }

    </style>

</head>

<body>

<div class="login-box">

    <h2>Admin Login</h2>

    <form action="../adminLogin" method="post">

        <input
                type="text"
                name="username"
                placeholder="Username"
                required>

        <input
                type="password"
                name="password"
                placeholder="Password"
                required>

        <button type="submit">

            Login

        </button>

    </form>

</div>

</body>
</html>