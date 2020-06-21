const initSlick = () => {
  console.log('hi')
  $('.single-item').slick({
    arrows: true,
    dots: true
    // nextArrow: '<i class="slick-next slick-arrow arrow-right"> > </i>',
    // prevArrow: '<i class="slick-next slick-arrow arrow-left"> < </i>'
  });
};

export {initSlick}


//   $('.single-item').slick();
