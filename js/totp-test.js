var SteamTotp = require('steam-totp');
var code = SteamTotp.generateAuthCode('cnOgv/KdpLoP6Nbh0GMkXkPXALQ=');
window.SteamTotp = SteamTotp;