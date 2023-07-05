document.addEventListener('turbolinks:load', () => {
    const slides = document.querySelectorAll('.carousel-slide img');
    const indicators = document.querySelectorAll('.carousel-indicator');
  
    let activeSlide = 0;
  
    function showSlide(slideIndex) {
      slides.forEach((slide, index) => {
        slide.style.display = index === slideIndex ? 'block' : 'none';
      });
      indicators.forEach((indicator, index) => {
        indicator.classList.toggle('active', index === slideIndex);
      });
    }
  
    function nextSlide() {
      activeSlide = (activeSlide + 1) % slides.length;
      showSlide(activeSlide);
    }
  
    function prevSlide() {
      activeSlide = (activeSlide - 1 + slides.length) % slides.length;
      showSlide(activeSlide);
    }
  
    setInterval(nextSlide, 5000);
  });
  