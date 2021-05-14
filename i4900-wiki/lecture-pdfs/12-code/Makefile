SOURCES := $(wildcard *.c src/**/*.c *.cpp src/**/*.cpp)
OBJECTS := $(SOURCES:.c=.o)
OBJECTS := $(OBJECTS:.cpp=.o)
HEADERS := $(wildcard *.h include/*.h)

COMMON   := -O2 -Wall -Wformat=2 -march=native -DNDEBUG
CFLAGS   := $(CFLAGS) $(COMMON)
CXXFLAGS := $(CXXFLAGS) $(COMMON)
CC       := gcc
CXX      := g++
LD       := $(CC)   # probably want $(CXX) for cpp source
LDFLAGS  := $(LDFLAGS)  # -L/path/to/libs/
LDADD    :=  # -lrt
INCLUDE  :=  # -I../path/to/headers/
DEFS     :=  # -DLINUX

TARGET   := test

.PHONY : all
all : $(TARGET)

# {{{ for debugging
DBGFLAGS := -g -UNDEBUG -O0
debug : CFLAGS += $(DBGFLAGS)
debug : CXXFLAGS += $(DBGFLAGS) -D_GLIBCXX_DEBUG
debug : all
.PHONY : debug
# }}}

$(TARGET) : $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^ $(LDADD)

%.o : %.cpp $(HEADERS)
	$(CXX) $(DEFS) $(INCLUDE) $(CXXFLAGS) -c $< -o $@

%.o : %.c $(HEADERS)
	$(CC) $(DEFS) $(INCLUDE) $(CFLAGS) -c $< -o $@

.PHONY : clean
clean :
	rm -f $(TARGET) $(OBJECTS)

# vim:ft=make:foldmethod=marker:foldmarker={{{,}}}
