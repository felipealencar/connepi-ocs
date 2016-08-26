    var seta = "imgs/seta_exibir.gif";
    function showDiv() {
        document.getElementById("minicurso").style.visibility = "visible";
        document.getElementById("seta_ocultar").style.visibility = "visible";
        document.getElementById("minicurso").style.dysplay = "block";
        document.getElementById("seta_ocultar").style.dysplay = "block";
        document.getElementById("seta_exibir").style.dysplay = "none";
        document.getElementById("seta_exibir").style.visibility = "hidden";      
        document.getElementById("minicurso").style.height = "100%";
    }
    
    function hideDiv() {
        document.getElementById("minicurso").style.dysplay = "none";
        document.getElementById("seta_ocultar").style.dysplay = "none";
        document.getElementById("minicurso").style.visibility = "hidden";
        document.getElementById("seta_ocultar").style.visibility = "hidden";
        document.getElementById("seta_exibir").style.visibility = "visible";
        document.getElementById("seta_exibir").style.dysplay = "block";
            
        document.getElementById("minicurso").style.height = "0px";
    }