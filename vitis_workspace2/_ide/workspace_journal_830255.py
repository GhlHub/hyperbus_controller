# 2026-03-30T23:59:13.502606617
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace2")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado_projects/hyperbus_test_proj/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

