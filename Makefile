# Variables
PROTOC = protoc
PROTO_DIR = proto
OUTPUT_DIR = ./gen/go

# Targets
all: generate

generate:
	$(PROTOC) -I $(PROTO_DIR) $(PROTO_DIR)/sso/*.proto --go_out=$(OUTPUT_DIR) --go_opt=paths=source_relative --go-grpc_out=$(OUTPUT_DIR) --go-grpc_opt=paths=source_relative

clean:
	rm -rf $(OUTPUT_DIR)/*