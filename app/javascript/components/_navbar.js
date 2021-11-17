const navbarHome = () => {
  const navbar = document.querySelector('.navbar');
  if (window.location.pathname === '/') {
    navbar
    navbar.classList.add('navbar-lewagon-home');
  }
}

export { navbarHome };