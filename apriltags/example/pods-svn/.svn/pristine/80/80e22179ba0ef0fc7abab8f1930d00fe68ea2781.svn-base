import os
import sys
import random

def make_buildCfgBlock(target_name, target_path, make_args):
    print "Making target <%s>%s for dir %s" % (target_name, " "*(40 - len(target_name)), target_path)
    buildCfgBlock = """
<cconfiguration id="cdt.managedbuild.toolchain.gnu.base.___RAND_NUM__.___SUB_RAND_NUM__">
            <storageModule buildSystemId="org.eclipse.cdt.managedbuilder.core.configurationDataProvider" id="cdt.managedbuild.toolchain.gnu.base.___RAND_NUM__.___SUB_RAND_NUM__" moduleId="org.eclipse.cdt.core.settings" name="__TARGET_NAME__">
                <externalSettings/>
                <extensions>
                    <extension id="org.eclipse.cdt.core.ELF" point="org.eclipse.cdt.core.BinaryParser"/>
                    <extension id="org.eclipse.cdt.core.GmakeErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
                    <extension id="org.eclipse.cdt.core.CWDLocator" point="org.eclipse.cdt.core.ErrorParser"/>
                    <extension id="org.eclipse.cdt.core.GCCErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
                    <extension id="org.eclipse.cdt.core.GASErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
                    <extension id="org.eclipse.cdt.core.GLDErrorParser" point="org.eclipse.cdt.core.ErrorParser"/>
                </extensions>
            </storageModule>
            <storageModule moduleId="cdtBuildSystem" version="4.0.0">
                <configuration buildProperties="" description="" id="cdt.managedbuild.toolchain.gnu.base.___RAND_NUM__.___SUB_RAND_NUM__" name="__TARGET_NAME__" parent="org.eclipse.cdt.build.core.emptycfg">
                    <folderInfo id="cdt.managedbuild.toolchain.gnu.base.___RAND_NUM__.___SUB_RAND_NUM__." name="/" resourcePath="">
                        <toolChain id="cdt.managedbuild.toolchain.gnu.base.1800626573" name="cdt.managedbuild.toolchain.gnu.base" superClass="cdt.managedbuild.toolchain.gnu.base">
                            <targetPlatform archList="all" binaryParser="org.eclipse.cdt.core.ELF" id="cdt.managedbuild.target.gnu.platform.base.907639882" name="Debug Platform" osList="linux,hpux,aix,qnx" superClass="cdt.managedbuild.target.gnu.platform.base"/>
                            <builder arguments="__BUILD_ARGUMENTS__" buildPath="${workspace_loc:${ProjName}/__TARGET_REL_PATH__/.}" command="make" id="cdt.managedbuild.target.gnu.builder.base.1517562325" keepEnvironmentInBuildfile="false" managedBuildOn="false" name="Gnu Make Builder" superClass="cdt.managedbuild.target.gnu.builder.base"/>
                            <tool id="cdt.managedbuild.tool.gnu.archiver.base.1306034072" name="GCC Archiver" superClass="cdt.managedbuild.tool.gnu.archiver.base"/>
                            <tool id="cdt.managedbuild.tool.gnu.cpp.compiler.base.1326183109" name="GCC C++ Compiler" superClass="cdt.managedbuild.tool.gnu.cpp.compiler.base">
                                <inputType id="cdt.managedbuild.tool.gnu.cpp.compiler.input.677773500" superClass="cdt.managedbuild.tool.gnu.cpp.compiler.input"/>
                            </tool>
                            <tool id="cdt.managedbuild.tool.gnu.c.compiler.base.526330877" name="GCC C Compiler" superClass="cdt.managedbuild.tool.gnu.c.compiler.base">
                                <inputType id="cdt.managedbuild.tool.gnu.c.compiler.input.478631574" superClass="cdt.managedbuild.tool.gnu.c.compiler.input"/>
                            </tool>
                            <tool id="cdt.managedbuild.tool.gnu.c.linker.base.1779919142" name="GCC C Linker" superClass="cdt.managedbuild.tool.gnu.c.linker.base"/>
                            <tool id="cdt.managedbuild.tool.gnu.cpp.linker.base.253721331" name="GCC C++ Linker" superClass="cdt.managedbuild.tool.gnu.cpp.linker.base">
                                <inputType id="cdt.managedbuild.tool.gnu.cpp.linker.input.1681161606" superClass="cdt.managedbuild.tool.gnu.cpp.linker.input">
                                    <additionalInput kind="additionalinputdependency" paths="$(USER_OBJS)"/>
                                    <additionalInput kind="additionalinput" paths="$(LIBS)"/>
                                </inputType>
                            </tool>
                            <tool id="cdt.managedbuild.tool.gnu.assembler.base.2070481161" name="GCC Assembler" superClass="cdt.managedbuild.tool.gnu.assembler.base">
                                <inputType id="cdt.managedbuild.tool.gnu.assembler.input.1594483230" superClass="cdt.managedbuild.tool.gnu.assembler.input"/>
                            </tool>
                        </toolChain>
                    </folderInfo>
                </configuration>
            </storageModule>
            <storageModule moduleId="org.eclipse.cdt.core.externalSettings"/>
        </cconfiguration>
"""

    buildCfgBlock = buildCfgBlock.replace("___RAND_NUM__", "%09d" % random.randint(0, 999999999))
    buildCfgBlock = buildCfgBlock.replace("___SUB_RAND_NUM__", "%09d" % random.randint(0, 999999999))

    buildCfgBlock = buildCfgBlock.replace("__TARGET_NAME__", target_name)
    buildCfgBlock = buildCfgBlock.replace("__TARGET_REL_PATH__", target_path)
    buildCfgBlock = buildCfgBlock.replace("__BUILD_ARGUMENTS__", make_args)
    return buildCfgBlock

def fail(msg):
    sys.stderr.write(msg + "\n")
    sys.exit(1)

def find_target_dirs(root_dir):
    search_dirs = [root_dir]
    target_dirs = []
    
    pods_found = 0
    for dirname in search_dirs:
        print "Searching in %s" % dirname
        if not os.path.exists(dirname):
            fail("Can't find directory %s" % dirname)

        # is the directory a pod?
        pods_fname = os.path.join(dirname, "cmake", "pods.cmake")
        tobuild_fname = os.path.join(dirname, "tobuild.txt")
        #add subdirectories
        if not os.path.exists(pods_fname):
            for d in os.listdir(dirname):
                full_d = os.path.abspath(os.path.join(dirname, d))
                if os.path.isdir(full_d) and d[0] != '.' and not d.startswith("build") and not d.startswith("pod-build"):  #don't recurse into . directories such as .svn
                    search_dirs.append(full_d)
                    #print "recursing into %s" % full_d
        
        if os.path.exists(pods_fname) or os.path.exists(tobuild_fname):
            pods_found = pods_found + 1 
            target_dirs.append(os.path.abspath(dirname))
        

        
    if (pods_found == 0):
        fail("No pods found!")
    return target_dirs

if len(sys.argv) > 2:
    fail("Usage: %s [project-dir]" % sys.argv[0])

if len(sys.argv) > 1:
    root_dir = os.path.abspath(sys.argv[1])
else:
    root_dir = os.path.abspath("./")
        

target_dirs = find_target_dirs(root_dir)

    

cproject_f = open(os.path.join(root_dir, ".cproject"))
cproject = cproject_f.read()
cproject_f.close()

first_cconf = cproject.find("<cconfiguration")
last_cconf = cproject.rfind("</cconfiguration>")


#put before block in
out_cproject = cproject[0:first_cconf] 

out_cproject = out_cproject + make_buildCfgBlock("All", "./", "-j8")
out_cproject = out_cproject + make_buildCfgBlock("All-j8", "./", "-j8")

for dirname in target_dirs:
    pod_name = os.path.basename(dirname)
    rel_path = os.path.relpath(dirname, root_dir)
    if rel_path == ".":
        continue
    out_cproject = out_cproject + make_buildCfgBlock(pod_name, rel_path, "")

out_cproject = out_cproject + make_buildCfgBlock("Verbose", "./", "VERBOSE=1")
    
out_cproject = out_cproject + cproject[last_cconf + len("</cconfiguration>"):]

#print out_cproject

os.rename(os.path.join(root_dir, ".cproject"), os.path.join(root_dir, ".cproject.back"))
cproject_f = open(os.path.join(root_dir, ".cproject"), "w")
cproject_f.write(out_cproject)
cproject_f.close()
