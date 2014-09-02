IDIRS =
LDIRS =
LIBS =
STATIC_LIBS =

SRCS =
HEADERS =

TARGET = test
default : $(TARGET)

include Makefile.lib

# Combine libs.
LIBS += $(STATIC_LIBS)

# Compiler info
CC = g++
CPPFLAGS = -Wall -Werror $(IDIRS) $(LDIRS)
ifdef GDB
CPPFLAGS += -O0 -ggdb
else
CPPFLAGS += -O3
endif

# Objects and executable
SRCS += $(TARGET).cpp
HEADERS +=
OBJS = $(SRCS:.cpp=.o)

$(TARGET) : $(FLINT_LIB) $(OBJS) $(HEADERS)
	$(CC) $(OBJS) $(CPPFLAGS) $(LIBS) -o $@

clean:
	rm -rf $(TARGET)