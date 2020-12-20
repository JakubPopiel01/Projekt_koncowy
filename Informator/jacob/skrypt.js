$('#nowe_zamowienie').click(function(event) {
    event.preventDefault();
    $('#formularz').toggleClass('active');
  });

  $('.cena').click(function(event) {
    event.preventDefault();
    $('#wynik').text($(this).data('cena'));
  });