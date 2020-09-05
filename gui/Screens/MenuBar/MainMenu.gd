extends Control


func _on_show_menu(menu, game_started):
	if not game_started and (menu == "main_menu" or menu == "return"):
		visible = true
		$"../ReturnButton".visible = false
		for nb in get_tree().get_nodes_in_group("nav_button"):
			nb.pressed = false
			if "nav_button_main_menu" in nb.get_groups():
				nb.visible = true
			elif "nav_button_game" in nb.get_groups():
				nb.visible = false
	else:
		visible = false