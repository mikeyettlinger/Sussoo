const initSlick = () => {
  console.log('hi')
  $('.single-item').slick({
    arrows: true,
    prevArrow: '.prev-arrow',
    nextArrow: '.next-arrow',
    speed: 500,
    fade: true,
    cssEase: 'linear'
  });
};

export {initSlick}


//   $('.single-item').slick();
