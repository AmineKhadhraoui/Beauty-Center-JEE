<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8" />
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

   body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  width: 100%;
  background: url(img/spa.jpg) center center fixed;
  background-size: cover;
  position: relative;
}

body::before {
  
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.7); /* Adjust the opacity as desired */
}
    ::selection {
      background: #ff80bf;
    }

    
    .container {
  background: rgba(255, 255, 255, 0.5); /* Adjust the opacity as desired */
  max-width: 400px;
  width: 100%;
  padding: 10px 30px;
  border-radius: 5px;
  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.7);
}

    .container form .title {
      font-size: 30px;
      font-weight: 600;
      margin: 20px 0 10px 0;
      position: relative;
    }

    .container form .title:before {
      content: "";
      position: absolute;
      height: 4px;
      width: 33px;
      left: 0px;
      bottom: 3px;
      border-radius: 5px;
      background-color: #e88f79;
    }

    .container form .input-box {
      width: 100%;
      height: 50px;
      margin-top: 30px;
      position: relative;
    }

    .container form .input-box input {
  width: 100%;
  height: 100%;
  outline: none;
  font-size: 18px;
  border: none;
  border-radius: 10px; 
}


    .container form .underline::before {
      content: "";
      position: absolute;
      height: 2px;
      width: 100%;
      background: #ccc;
      left: 0;
      bottom: 0;
    }

    .container form .underline::after {
      content: "";
      position: absolute;
      height: 2px;
      width: 100%;
      background: #ed4599;
      left: 0;
      bottom: 0;
      transform: scaleX(0);
      transform-origin: left;
      transition: all 0.3s ease;
    }

    .container form .input-box input:focus ~ .underline::after,
    .container form .input-box input:valid ~ .underline::after {
      transform: scaleX(1);
      transform-origin: left;
    }

    .container form .button {
      margin: 40px 0 20px 0;
      text-align: center;
    }

    .container .input-box button {
      background: #e88f79;
      font-size: 18px;
      color: #fff;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
      height: 50px;
    }

    .container .input-box button:hover {
      background-color: #d96f55;
    }

    .container .option {
      text-align: center;
      font-size: 17px;
      font-family: "Arial", sans-serif;
    }
    .container .option div {
      display: flex;
      align-items: center;
    }
    a {
      text-decoration: none;
    }

    .container .twitter button {
      display: block;
      height: 50px;
      width: 100%;
      font-size: 15px;
      text-decoration: none;
      padding-left: 20px;
      line-height: 50px;
      color: #fff;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

    .container .twitter button {
      padding-right: 12px;
      font-size: 20px;
      text-align: center;
    }

    .container .twitter button {
      text-decoration: none;
    }

    .container .twitter button {
      background: linear-gradient(to right, #00acee 0%, #1abeff 100%);
      margin: 20px 0 15px 0;
      text-align: center;
    }

    .container .twitter button:hover {
      background: linear-gradient(to left, #00acee 0%, #1abeff 100%);
      margin: 20px 0 15px 0;
    }
  </style>
</head>
<body>
  <div class="container">
    <form method="post" action="login">
      <div class="title">Login</div>
      <div class="input-box underline">
        <input type="email" id="email" name="email" placeholder="Enter Your Email" required />
        <div class="underline"></div>
      </div>
      <div class="input-box">
        <input type="password" id="password" name="password" placeholder="Enter Your Password" required />
        <div class="underline"></div>
      </div>
      <div class="input-box button">
        <button type="submit">Continue</button>
      </div>
    </form>
    <div class="option">If you don't have an account Sign Up</div>
    <div class="twitter">
      <a href="SignUp"><button type="submit">Sign Up</button></a>
    </div>
  </div>
</body>
</html>
