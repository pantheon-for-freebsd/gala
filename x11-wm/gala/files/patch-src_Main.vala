--- src/Main.vala.orig	2024-06-03 10:12:31 UTC
+++ src/Main.vala
@@ -15,6 +15,8 @@
 //  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 //
 
+[CCode (has_target = false)]
+delegate void sighandler_t (int a);
 namespace Gala {
     private const OptionEntry[] OPTIONS = {
         { "version", 0, OptionFlags.NO_ARG, OptionArg.CALLBACK, (void*) print_version, "Print version", null },
