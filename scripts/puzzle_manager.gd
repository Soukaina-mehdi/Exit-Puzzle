extends Node

var has_key := false
var switches_active := 0
var required_switches := 2

signal door_opened

func collect_key():
    has_key = true

func activate_switch():
    switches_active += 1
    check_exit()

func check_exit():
    if has_key and switches_active >= required_switches:
        door_opened.emit()
