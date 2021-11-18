import Typed from 'typed.js';

const textAnimation = () => {
  const element = document.querySelector('.text-animation')
  if (element) {
    const type = new Typed(element, {
      strings: ['Bienvenue sur Work4Me', 'Vous voulez faire une pause dans votre travail?', "Recrutez quelqu'un pour travailler à votre place !"],
      typeSpeed: 50,
      loop: true,
      loopCount: Infinity
    })
  }
}

export { textAnimation};
