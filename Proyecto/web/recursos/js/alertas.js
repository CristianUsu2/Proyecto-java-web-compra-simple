
function registro(){

Swal.fire(
  'Registrado Correctamente!',
  'Registro Exitoso!',
  'success'
);}

function eliminar(){

Swal.fire({
  title: '¿Estas seguro que eliminaras este registro?',
  text: "Los cambios no se podran revertir!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Sí, deseo eliminarlo!'
}).then((result) => {
  if (result.value) {
    Swal.fire(
      'Deleted!',
      'Se ha borrado el registro correctamente.',
      'success'
    );
  }
});
}

function agregar(){


Swal.fire(
  'Usuario Agregado!',
  'AGREGADO CORRECTAMENTE!',
  'success'
);

}

function editar(){


Swal.fire(
  'Usuario Editado!',
  'Se guardaron los cambios correctamente!',
  'success'
);

}

