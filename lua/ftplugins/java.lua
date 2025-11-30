local jdtls = require("jdtls")
local home = vim.fn.expand("~")
local workspace = home .. "/.local/share/jdtls/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

jdtls.start_or_attach({
  cmd = {
    "java",
    "-jar",
    home .. "/.local/share/java/jdtls/plugins/org.eclipse.equinox.launcher_*.jar",
    "-configuration",
    home .. "/.local/share/java/jdtls/config_linux",
    "-data",
    workspace,
  },
  root_dir = require("jdtls.setup").find_root({ "git", "pom.xml", "build.gradle" }),
})
