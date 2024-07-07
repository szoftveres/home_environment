OBJDIR = .
SRCDIR = .
INCLDIR = .
OUTDIR = .

## General Flags
PROGRAM = template
CC = gcc
AS = gcc
LD = gcc
CFLAGS = -Wall -Wextra # -Werror
ASFLAGS =
 
## NOTE: PIE can be used if we're not defining .data in the asm
LDFLAGS = -g -no-pie

## Objects that must be built in order to link
OBJECTS = $(OBJDIR)/main.o          \
          $(OBJDIR)/asmsrc.o            \


## Build both compiler and program
all: binary

binary: elf

## Compile source files
$(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c -o $(OBJDIR)/$*.o $< 

## Compile source files
$(OBJDIR)/%.o : $(SRCDIR)/%.S
	$(AS) $(ASFLAGS) -c -o $(OBJDIR)/$*.o $<

elf: $(OBJECTS)
	$(LD) $(LDFLAGS) -o $(OBJDIR)/$(PROGRAM).bin $(OBJECTS)

clean:
	-rm -rf $(OBJECTS) $(OBJDIR)/$(PROGRAM).bin

