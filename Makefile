BUILD_CONFIG = make_config.mk

all: compile test

get-deps:
	./c_src/build_deps.sh get-deps

rm-deps:
	./c_src/build_deps.sh rm-deps

compile:
	./c_src/build_deps.sh
	./rebar3 compile

test: compile
	./rebar3 eunit

clean:
	./rebar3 clean
