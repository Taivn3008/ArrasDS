Simple Makefile for ArrasDS

TARGET = arrasds BUILD = build SOURCE = source

CC = arm-none-eabi-gcc OBJCOPY = arm-none-eabi-objcopy

CFLAGS = -mthumb -mthumb-interwork -O2 -Wall -fno-exceptions -ffunction-sections -fdata-sections -Iinclude

OBJS = $(BUILD)/main.o

all: $(TARGET).nds

$(TARGET).nds: $(OBJS) $(CC) $(CFLAGS) $(OBJS) -o $(TARGET).elf $(OBJCOPY) -O binary $(TARGET).elf $(TARGET).nds

$(BUILD)/main.o: $(SOURCE)/main.c mkdir -p $(BUILD) $(CC) $(CFLAGS) -c $< -o $@

clean: rm -rf $(BUILD) $(TARGET).elf $(TARGET).nds $(TARGET).map

