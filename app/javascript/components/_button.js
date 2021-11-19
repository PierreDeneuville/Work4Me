const changeButton = () => {
  const btnAccept = document.querySelector('.to-accept');
  const btnRefuse = document.querySelector('.to-refuse');
  const divButtons = document.querySelector('.buttons-demande-show');
  const state = document.querySelector('.etat-demande');

  btnAccept.addEventListener('click', (e) => {
    divButtons.remove();
    state.innerHTML = "";
    state.innerHTML = 'Etat de la demande:                                 <i class="far fa-check-square"></i>';
  })

  btnRefuse.addEventListener('click', (e) => {
    divButtons.remove();
    state.innerHTML = "";
    state.innerHTML = 'Etat de la demande:                                 <i class="fas fa-times"></i>';

  })
}

const toAccept = () => {

}

export { changeButton };
