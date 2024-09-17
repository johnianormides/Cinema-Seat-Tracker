<template>
  <div class="logo">
    <img src="./cinemania_logo.png" alt="Logo">
  </div>
  <div class="login">
    <div class="form-box">
      <p class="tagline">Cinematic Adventures Start Here</p>
      <div class="button-box">
        <div id="btn"></div>
        <button type="button" class="toggle-btn" @click="moveBtn('login')">Log in</button>
        <button type="button" class="toggle-btn" @click="moveBtn('signup')">Sign up</button>
      </div>
      <form id="login" class="input-group">
        <input type="text" class="input-field" placeholder="Email" required>
        <input type="password" class="input-field" placeholder="Password" required>
        <input type="checkbox" class="check-box"><span>Remember Password</span>
        <button type="submit" class="submit-btn">Log In</button>
      </form>
      <form id="signup" class="input-group">
        <input type="text" class="input-field" placeholder="Full Name" required>
        <input type="email" class="input-field" placeholder="Email" required>
        <input type="password" class="input-field" placeholder="Create Password" required>
        <input type="password" class="input-field" placeholder="Confirm Password" required>
        <input type="checkbox" class="check-box"><span>I agree to the terms & conditions</span>
        <button type="submit" class="submit-btn">Sign up</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    moveBtn(action) {
      const loginForm = document.getElementById("login");
      const signupForm = document.getElementById("signup");
      const btn = document.getElementById("btn");

      if (action === "login") {
        loginForm.style.left = "50px";
        signupForm.style.left = "450px";
        btn.style.left = "0px"; 
      } else {
        loginForm.style.left = "-400px";
        signupForm.style.left = "50px";
        btn.style.left = "110px"; 
      }
    }
  }
};
</script>

<style scoped>
body {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
  background-image: url("./background.png");
  background-size: cover;
  background-position: center;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  position: relative;
}

.logo {
  width: 70%;
  position: absolute; 
  left: 8vw; 
  top: 25vh; 
  max-width: 40vw; 
  z-index: 1; 
}

.logo img {
  width: 100%; 
  height: auto;
}

.tagline {
  color: #ffffff;
  padding-left: 45px;
  margin: 5px;
}

.login {
  height: 100%;
  width: 100%;
  background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url("./background.png");
  background-position: center;
  background-size: cover;
  position: absolute;
}

.form-box {
  width: 330px;
  height: 60vh;
  margin-left: 55%;
  margin-top: 10%;
  background: transparent;
  border: 2px solid rgb(255, 255, 255, .2);
  backdrop-filter: blur(10px);
  background: linear-gradient(120deg, rgba(83, 81, 80, 0.457) 50%, rgba(186,180,180,0.4) 100%);
  border-radius: 15px;
  padding: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  outline: none;
  position: relative;
  z-index: 0; 
  overflow: hidden;
}

.button-box {
  width: 220px;
  margin: 30px auto;
  position: relative;
  box-shadow: 0 0 20px 9px #ffffff1f;
  border-radius: 30px;
}

.toggle-btn {
  padding: 10px 30px;
  cursor: pointer;
  background: transparent;
  border: 0;
  color: #ffffff;
  font-weight: bold;
  outline: none;
  position: relative;
}

#btn {
  top: 0;
  left: 0;
  position: absolute;
  width: 110px;
  height: 100%;
  background: #630000;
  border-radius: 30px;
  transition: 0.5s;
}

.input-group {
  position: absolute;
  width: 250px;
  transition: 0.5s;
}

#login {
  left: 50px;
}

#signup {
  left: 450px;
}

.input-field {
  width: 100%;
  padding: 10px;
  padding-right: 10px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  outline: none;
  box-sizing: border-box;
}

.submit-btn {
  width: 85%;
  padding: 10px 30px;
  cursor: pointer;
  display: block;
  margin: auto;
  background: #ffffff;
  color: #000000;
  border: 0;
  outline: none;
  border-radius: 30px;
  justify-content: center;
}

.submit-btn:hover {
  background: #cecdcd;
  color: #000000;
}

.check-box {
  margin: 30px 10px 30px 0;
}

span {
  color: #ffffff;
  font-size: 12px;
  bottom: 68px;
  position: absolute;
}
</style>
