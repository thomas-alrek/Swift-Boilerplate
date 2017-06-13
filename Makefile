SRCDIR := src
OUTPUT := build
TARGET := helloworld
SOURCE = $(shell find $(SRCDIR) -name '*.swift')

helloworld: $(SOURCES)
	@mkdir -p $(OUTPUT)
	@swiftc -o $(OUTPUT)/$(TARGET) $(SOURCE) -v -wmo
clean:
	@rm -rf build