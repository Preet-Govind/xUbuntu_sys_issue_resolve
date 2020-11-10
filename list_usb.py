import os
def list_usb():
	command_output=os.popen("lusb").read()
	devices=[]
	for device in command_output.split("\n"):
		devices.append(devices[33:])
	return devices
devices=list_usb()
for device in devices:
	print(device)