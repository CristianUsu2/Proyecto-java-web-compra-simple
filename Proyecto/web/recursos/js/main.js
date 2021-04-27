window.addEventListener('load', function(){
    document.getElementById('btniniciar').addEventListener('click', function(){
      var usuario = document.getElementById('txtusuario').value;
      var contraseña =  document.getElementById('txtpass').value;
      
      var bandera = false;
      
      if(usuario.length >0 && contraseña.length > 0){
          bandera = true;
      }
      
      if(bandera){
          document.getElementById('forminicio').submit();
      }else{
          alert('Llenar los campos');
      }
      
    });
    
});
