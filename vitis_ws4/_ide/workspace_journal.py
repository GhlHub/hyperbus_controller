# 2026-04-11T17:38:04.028888525
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_ws4")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="bootloader")
status = comp.clean()

comp.build()

vitis.dispose()

