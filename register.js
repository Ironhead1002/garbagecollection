function validation(frmUser) {
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var mobile = document.getElementById('mobile').value;
    console.log(mobile);
    var address = document.getElementById('address').value;

    letters = /^[a-zA-Z ]*$/;
    numbers = /^[0-9]*$/;
    const Email = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    if (name == "") {
        document.getElementById("name_span").innerHTML = "Name is required";
        return false;

    } else if (!name.match(letters)) {
        document.getElementById("name_span").innerHTML = "only alphabate is required";
        return false;
    }else {
        document.getElementById("name_span").innerHTML = "*";
    }

    if (email == "") {
        document.getElementById("email_span").innerHTML = "email is required";
        return false;
    }else if (!email.match(Email)) {
        document.getElementById("email_span").innerHTML = "Please valid email";
        return false;
    } else {
        document.getElementById("email_span").innerHTML = "*";
    }

    if (password == "") {
        document.getElementById("password_span").innerHTML = "password is required";
        return false;
    } else if (password.length < 8 ) {
        document.getElementById("password_span").innerHTML = "password must be 8 character";
        return false;
    } else {
        document.getElementById("password_span").innerHTML = "*";
    }

    if (mobile == "") {
        document.getElementById("mobile_span").innerHTML = "contact is required";
        return false;
    }else if (!mobile.match(numbers)) {
        document.getElementById("mobile_span").innerHTML = "only number is allowed";
        return false;
    } else if (mobile.length != 10 ){
        document.getElementById("mobile_span").innerHTML = "contact must be 10 number";
        return false;
    } else {
        document.getElementById("mobile_span").innerHTML = "*";
    }
}
