const btnBuscar = document.getElementById('btnBuscar');
const inputPokemon = document.getElementById('nombrePokemon');
const divResultado = document.getElementById('resultado');

btnBuscar.addEventListener('click', async () => {
    const nombre = inputPokemon.value.trim().toLowerCase();

    if (!nombre) {
        divResultado.innerHTML = '<p style="color: red;">Por favor ingresa un nombre de Pokemon.</p>';
        return;
    }

    divResultado.innerHTML = '<p>Cargando...</p>';

    try {
        const respuesta = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);

        if (!respuesta.ok) {
            throw new Error('El Pokemon no existe o la peticion fallo.');
        }

        const datos = await respuesta.json();

        const pesoKg = datos.weight / 10;
        const alturaM = datos.height / 10;
        const tipos = datos.types.map(t => t.type.name).join(', ');

        divResultado.innerHTML = `
            <h3>${datos.name.toUpperCase()}</h3>
            <img src="${datos.sprites.front_default}" alt="${datos.name}">
            <p><strong>Tipo(s):</strong> ${tipos}</p>
            <p><strong>Peso:</strong> ${pesoKg} kg</p>
            <p><strong>Altura:</strong> ${alturaM} m</p>
        `;

    } catch (error) {
        divResultado.innerHTML = `<p style="color: red;">Error: No se encontro el Pokemon o hubo un fallo en la red.</p>`;
    }
});