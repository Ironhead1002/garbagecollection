function validation(frmUser) {
    var mobile = document.getElementById('mobile').value;
    console.log(mobile);

    numbers = /^[0-9]*$/;

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
