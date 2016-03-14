(function() {
  var changeCode;

  if (localStorage.getItem('secret').length > 3) {
    $('.steam-code').removeClass('opacity-0');
    $('.progress').removeClass('opacity-0');
    changeCode = function() {
      var time, width;
      time = (new Date).getSeconds();
      if (time > 30) {
        time -= 30;
      }
      time = 30 - time;
      width = time / 30 * 100;
      document.querySelector('.code').innerText = SteamTotp.generateAuthCode(localStorage.getItem('secret'));
      return document.querySelector('.progress-bar').style.width = width + "%";
    };
    changeCode();
    setInterval(changeCode, 300);
    $('.secret').val(localStorage.getItem('secret'));
  }

  window.onload = function() {
    return setTimeout(function() {
      return $('.settings-box').removeClass('hidden');
    }, 10);
  };

  $('.gear').click(function() {
    return $('.settings-box').toggleClass('open');
  });

  $('.save').click(function() {
    localStorage.setItem('secret', $('.secret').val());
    return location.reload();
  });

}).call(this);
