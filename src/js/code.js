// Si no existe el login, no intenta añadirle el EventListener => ?
document.getElementById('login')?.addEventListener('submit', (event) => {
    const campoNombre = document.getElementById('usuario');

    function mensajeError(campo, mensaje, event) {
        campo.setCustomValidity(mensaje); // Le pasamos el mensaje como argumento
        campo.reportValidity();
        // Para que no se envíe el formulario y podamos verlo en consola
        event.preventDefault();
    }

    // Limpiamos cualquier mensaje de error anterior
    campoNombre.setCustomValidity('');

    if (campoNombre.value.includes('@')) {
        const partesEmail = campoNombre.value.split('@'); // Devuelve un array con las partes que se ha cortado => split
        console.log(partesEmail);

        if (partesEmail.length > 2) { // Significa que hay dos arrobas
            mensajeError(campoNombre, 'No puede haber más de un @ tete', event);
        } else if (!partesEmail[1].includes('.')) {
            mensajeError(campoNombre, 'Después de @ ha de haber un .', event);
        }
    }
    // Si no contiene @ también podrías avisar (opcional)
    else {
        mensajeError(campoNombre, 'Falta el @ en el correo', event);
    }

    // console.log("Login");
});

document.getElementById('usuario')?.addEventListener('input', (event) =>{
    event.target.setCustomValidity(''); // Quitando el mensaje por completo
})