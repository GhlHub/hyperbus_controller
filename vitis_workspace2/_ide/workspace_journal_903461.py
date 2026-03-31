# 2026-03-31T00:27:11.636738918
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace2")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_projects/hyperbus_test_proj/design_1_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

