CC       := gcc
CFLAGS   := -Wall -Wextra -Wpedantic -std=c11 -g -MMD -MP
CPPFLAGS := -Iinclude
LDFLAGS  :=
LDLIBS   :=

SRC_DIR   := src
BUILD_DIR := build
TARGET    := $(BUILD_DIR)/myprogram

SRCS := $(wildcard $(SRC_DIR)/*.c)
OBJS := $(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)
DEPS := $(OBJS:.o=.d)

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $@

-include $(DEPS)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
