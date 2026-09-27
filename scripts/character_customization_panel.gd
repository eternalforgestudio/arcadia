extends PanelContainer


@export var player: Player

@export var gender: String
@export var hair_colors: Array
@export var skin_tones: Array
@export var outfit_colors: Array

@onready var hair_color_label: Label = $MarginContainer/VBoxContainer/HBoxContainer3/HairColorLabel
@onready var skin_tone_label: Label = $MarginContainer/VBoxContainer/HBoxContainer4/SkinToneLabel
@onready var outfit_color_label: Label = $MarginContainer/VBoxContainer/HBoxContainer5/OutfitColorLabel

var current_hair_color_index: int = 0
var current_skin_tone_index: int = 0
var current_outfit_color_index: int = 0

func _ready() -> void:
	player.gender = "female"
	player.hair_color = hair_colors[0]
	player.skin_tone = skin_tones[0]
	player.outfit_color = outfit_colors[0]
	hair_color_label.text = hair_colors[0]
	skin_tone_label.text = skin_tones[0]
	outfit_color_label.text = outfit_colors[0]

func _on_male_button_toggled(toggled_on: bool) -> void:
	player.gender = "male"


func _on_female_button_toggled(toggled_on: bool) -> void:
	player.gender = "female"


func _on_hair_left_texture_button_pressed() -> void:
	current_hair_color_index = (current_hair_color_index - 1) % hair_colors.size()
	player.hair_color = hair_colors[current_hair_color_index]
	hair_color_label.text = hair_colors[current_hair_color_index]


func _on_hair_right_texture_button_pressed() -> void:
	current_hair_color_index = (current_hair_color_index + 1) % hair_colors.size()
	player.hair_color = hair_colors[current_hair_color_index]
	hair_color_label.text = hair_colors[current_hair_color_index]


func _on_skin_left_texture_button_pressed() -> void:
	current_skin_tone_index = (current_skin_tone_index - 1) % skin_tones.size()
	player.skin_tone = skin_tones[current_skin_tone_index]
	skin_tone_label.text = skin_tones[current_skin_tone_index]


func _on_skin_right_texture_button_pressed() -> void:
	current_skin_tone_index = (current_skin_tone_index + 1) % skin_tones.size()
	player.skin_tone = skin_tones[current_skin_tone_index]
	skin_tone_label.text = skin_tones[current_skin_tone_index]


func _on_outfit_left_texture_button_pressed() -> void:
	current_outfit_color_index = (current_outfit_color_index - 1) % outfit_colors.size()
	player.outfit_color = outfit_colors[current_outfit_color_index]
	outfit_color_label.text = outfit_colors[current_outfit_color_index]


func _on_outfit_right_texture_button_pressed() -> void:
	current_outfit_color_index = (current_outfit_color_index + 1) % outfit_colors.size()
	player.outfit_color = outfit_colors[current_outfit_color_index]
	outfit_color_label.text = outfit_colors[current_outfit_color_index]
