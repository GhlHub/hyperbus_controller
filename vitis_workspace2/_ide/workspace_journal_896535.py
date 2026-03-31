# 2026-03-31T00:03:05.342327564
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace2")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

vitis.dispose()

