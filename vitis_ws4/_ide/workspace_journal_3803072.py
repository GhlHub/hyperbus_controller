# 2026-04-03T07:45:55.707383224
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_ws4")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado_projects/hyperbus_test_proj/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

platform = client.create_platform_component(name = "platform_freertos",platform_xpfm_path = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm")

platform = client.get_component(name="platform_freertos")
status = platform.build()

comp = client.create_app_component(name="srec_spi_bootloader",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0",template = "srec_spi_bootloader")

domain = platform.add_domain(cpu = "microblaze_0",os = "freertos",name = "hello_world_dom",display_name = "hello_world_dom",support_app = "freertos_hello_world",generate_dtb = False,hw_boot_bin = "")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="srec_spi_bootloader")
comp.build()

comp = client.create_app_component(name="srec_bootloader",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0",template = "srec_bootloader")

status = platform.build()

comp = client.get_component(name="srec_bootloader")
comp.build()

client.delete_component(name="srec_spi_bootloader")

client.delete_component(name="componentName")

comp = client.create_app_component(name="bootloader",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="bootloader")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../vitis_workspace2/qspi_srec_bootloader/src", files=["app.yaml", "errors.h", "euart_console.c", "platform.c", "platform.h", "portab.h", "qspi_srec_bootloader.c", "srec.c", "srec.h"], dest_dir_in_cmp = "src", is_skip_copy_sources = False)

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="srec_bootloader")

client.delete_component(name="componentName")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0",template = "empty_application")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

component = client.get_component(name="hello_world")

lscript = component.get_ld_script(path="/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world/src/lscript.ld")

lscript.add_memory_region("new_memory_0", "0x0000", "0x8000")

lscript.rename_memory_region("new_memory_0", "hyperram")

lscript.update_memory_region("hyperram", "0x80700000", "0x8000")

lscript.update_memory_region("hyperram", "0x80700000", "0x807fffff")

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="bootloader")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="hello_world")
status = comp.clean()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_freertos")
domain = platform.add_domain(cpu = "microblaze_0",os = "freertos",name = "freertos_test",display_name = "freertos_test",support_app = "freertos_hello_world",generate_dtb = False,hw_boot_bin = "")

domain = platform.add_domain(cpu = "microblaze_0",os = "freertos",name = "freertos_test",display_name = "freertos_test",support_app = "freertos_hello_world",generate_dtb = False,hw_boot_bin = "")

domain = platform.add_domain(cpu = "microblaze_0",os = "freertos",name = "freertos_hello",display_name = "freertos_hello",support_app = "freertos_hello_world",generate_dtb = False,hw_boot_bin = "")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../vivado_projects/hyperbus_test_proj/design_1_wrapper.xsa")

comp = client.get_component(name="bootloader")
status = comp.clean()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_freertos")
status = platform.build()

status = platform.build()

