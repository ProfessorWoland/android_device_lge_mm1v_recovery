LZ4_BIN := /usr/bin/lz4


$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
                $(recovery_ramdisk) \
                $(recovery_kernel)
        @echo ----- Compressing recovery ramdisk with lz4 ------
        $(LZ4_BIN) $(recovery_uncompressed_ramdisk)
        $(hide) cp $(recovery_uncompressed_ramdisk).lz4 $(recovery_ramdisk)
        @echo ----- Making recovery image ------
        $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) --output $@
        @echo ----- Made recovery image -------- $@
        $(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
        $(call pretty,"Target boot image: $@")
        $(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) --output $@
        $(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
