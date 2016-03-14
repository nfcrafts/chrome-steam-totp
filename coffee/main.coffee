if localStorage.getItem('secret')
	$('.steam-code, .progress').removeClass 'opacity-0'
	changeCode = ->
		time = (new Date).getSeconds()
		if time > 30
			time -= 30
		time = 30-time
		width = time/30*100
		document.querySelector '.code'
		.innerText = SteamTotp.generateAuthCode(localStorage.getItem('secret'))
		document.querySelector '.progress-bar'
		.style.width = "#{width}%"
	do changeCode
	setInterval changeCode, 300

	$('.secret').val(localStorage.getItem('secret'))
window.onload = ->
	setTimeout ->
		$('.settings-box').removeClass('hidden')
	, 10
$('.gear').click ->
	$('.settings-box').toggleClass 'open'
$('.save').click ->
	localStorage.setItem('secret', $('.secret').val())
	do location.reload