include makefile.conf

all: $(SERVER_TARGET) $(CLIENT_TARGET)

$(SERVER_TARGET): $(SERVER_OBJS)
	$(CC) -o $@ $^ -lpthread
$(CLIENT_TARGET): $(CLIENT_OBJS)
	$(CC) -o $@ $^ -lpthread

clean:
	$(RM) $(SERVER_OBJS)
	$(RM) $(CLIENT_OBJS)
	$(RM) $(SERVER_TARGET)
	$(RM) $(CLIENT_TARGET)
	$(RM) cts stc

