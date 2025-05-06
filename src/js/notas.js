export async function crearNota(formulario) {
    const nota = new FormData(formulario);

    //console.log(nota);
    const peticion = await fetch('../api/v0.0/notas/', {
        method: 'POST',
        body: nota
    })
    const datos = await peticion.json();
    //console.log(datos);

    const output = document.getElementById('output');
    const mensaje = output.querySelector('.mensaje');

    if(datos.error) {
        //console.error(datos.error);
        mensaje.textContent = datos.error;
        output.className = 'error';
    }else{
        //console.log(datos.data);
        mensaje.textContent = `Se creó la nota ${datos.data.titulo}`;
        output.className = 'ok';
    }

    output.showModal();
}