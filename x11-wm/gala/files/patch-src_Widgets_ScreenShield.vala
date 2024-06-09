--- src/Widgets/ScreenShield.vala.orig	2024-06-03 10:00:09 UTC
+++ src/Widgets/ScreenShield.vala
@@ -286,7 +286,7 @@ namespace Gala {
             string? session_id = GLib.Environment.get_variable ("XDG_SESSION_ID");
             if (session_id == null) {
                 debug ("Unset XDG_SESSION_ID, asking logind");
-                if (login_user_manager == null) {
+                if (login_user_manager == null || login_user_manager.display == null) {
                     return null;
                 }
 
