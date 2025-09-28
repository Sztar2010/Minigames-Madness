extends AudioStreamPlayer2D
var Music = false
func _on_MusicButton_pressed():
	Music.toggle_music()
	if Music.music_enabled:
		$MusicButton.text = "Music: On"
	else:
		$MusicButton.text = "Music: Off"
