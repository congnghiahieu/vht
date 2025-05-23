FROM openresty/openresty:1.27.1.2-jammy

# install dependencies
RUN ["luarocks", "install", "lua-resty-session", "4.0.3"]
RUN ["luarocks", "install", "lua-resty-http"]
RUN ["luarocks", "install", "lua-resty-jwt"]

# # install test dependencies
RUN ["apt", "update"]
RUN ["apt", "install", "-y", "git"]
RUN ["luarocks", "install", "busted"]
RUN ["luarocks", "install", "LuaSocket"]
RUN ["luarocks", "install", "serpent"]
RUN ["luarocks", "install", "dkjson"]
RUN ["luarocks", "install", "luacov"]
