OBJS=cbmbasic.o runtime.o plugin.o console.o
CFLAGS+=-Wall -O3 -fPIE
LDFLAGS+=-pie

all: cbmbasic

cbmbasic: $(OBJS)
	$(CC) $(LDFLAGS) -o cbmbasic $(OBJS)

clean:
	rm -f $(OBJS) cbmbasic
