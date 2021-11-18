import Typed from 'typed.js';

const textAnimation = () => {
  const element = document.querySelector('.text-animation')
  if (element) {
    const type = new Typed(element, {
      strings: ['Bienvenue sur Work4Me', 'Make your life easier. Find someone to do your work!'],
      typeSpeed: 50,
      loop: true,
      loopCount: Infinity
    })
  }
}

export { textAnimation};
