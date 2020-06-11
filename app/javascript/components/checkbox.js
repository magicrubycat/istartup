const categoryCard = () => {
  let sectors = document.querySelectorAll('.category-choice');

  const toggleActiveClass = (event) => {
    event.currentTarget.classList.toggle('active');
    if (event.currentTarget.hasAttribute("checked")) {
      event.currentTarget.removeAttribute("checked");
    } else {
      event.currentTarget.setAttribute("checked", "");
    }
  };

  const toggleActiveOnClick = (sector) => {
    sector.addEventListener('click', toggleActiveClass);
  };

  sectors.forEach(toggleActiveOnClick);
}

export { categoryCard };
