package = "async"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/async",
   dir = "async"
}

description = {
   summary = "An async framework for Torch (based on LibUV)",
   detailed = [[
Async framework for Torch, based on LibUV.
   ]],
   homepage = "https://github.com/clementfarabet/async",
   license = "BSD"
}

dependencies = {
   "torch >= 7.1.alpha",
}

build = {
   type = "command",
   build_command = "$(MAKE)",
   install_command = [[
$(MAKE)
cp couv/couv.lua async.lua $(LUADIR)/
cp couv/couv_native.so lhttp_parser/lhttp_parser.so $(LIBDIR)/
   ]]
}
