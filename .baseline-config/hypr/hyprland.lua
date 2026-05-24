---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
terminal    = "kitty"
-- fileManager = "dolphin"
fileManager = "thunar"
menu        = "hyprlauncher -d"

------------------
---- MONITORS ----
------------------
require("cfgs/monitors")
-------------------
---- AUTOSTART ----
-------------------
require("cfgs/autostarts")
-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
require("cfgs/envs")
-----------------------
----- PERMISSIONS -----
-----------------------
require("cfgs/perms")
-----------------------
---- LOOK AND FEEL ----
-----------------------
require("cfgs/appearance")
----------------
----  MISC  ----
----------------
require("cfgs/misc")
---------------
---- INPUT ----
---------------
require("cfgs/input")
---------------------
---- KEYBINDINGS ----
---------------------
require("cfgs/binds")
--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
require("cfgs/rules") -- . . . and workspaces
