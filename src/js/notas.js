export async function crearNota(formulario) {
    const nota = new FormData(formulario);

    //console.log(nota);
    const peticion = await fetch('../api/v0.0/notas/', {
        method: 'POST',
        body: nota
    })
    const datos = await peticion.json();
    console.log(datos);
    if(!datos.exito) {
        console.error("Error al crear nota");
    }
}