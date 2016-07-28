document.getElementById("btnRegistro").addEventListener("click", showSignup);

function showSignup(){
    document.getElementById("signup").style.display = "block";
    document.getElementById("sesion").style.display = "none";
}

window.onload = function () {
    document.getElementById('button').onclick = function () {
        document.getElementById('modal').style.display = "none";
        console.log("entra");
    };
};

function cerrar(){
    document.getElementById('modal').style.display = "none";
}
