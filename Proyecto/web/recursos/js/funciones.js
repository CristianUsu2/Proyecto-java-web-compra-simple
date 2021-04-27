$(document).ready(function(){
   $("tr #btnDelete").click(function(){ 
       var idp = $(this).parent().find("#idp").val();
   Swal.fire({
  title: 'Estas seguro que desea eliminar?',
  text: "Los cambios no se podrán revertir!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Sí, Eliminar!'
}).then((result) => {
  if (result.value) {
      parent.location.href="Controlador2?accion=carrito";
    Swal.fire(
      'Deleted!',
      'Tu producto se ha eliminado correctamente.',
      'success'
    )
  }
})
});
function eliminar(idp){
    var url ="Controlador2?accion=Delete";
    $.ajax({
        type: 'POST',
        url: url,
        data: "idp="+idp,
        success: function (data, textStatus, jqxHR){
        }
    });
}
});

$(document).ready(function(){
   $("#compra").click(function(){ 
       var idp = $(this).parent().find("#compra").val();

Swal.fire(
  'Se ha comprado el artículo correctamente!',
  'Disfruta de tu nuevo producto!',
  'success'
)
   
   })
});

$(document).ready(function(){
   $("#pago").click(function(){ 
       var idp = $(this).parent().find("#pago").val();

Swal.fire(
  'Se realizó el pago correctamente!',
  'Ya puedes gestionar tu artículo!',
  'success'
)
   
   })
});