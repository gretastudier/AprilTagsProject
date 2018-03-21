#!/usr/bin/env python

import os
import sys
import shutil
from xml.dom import minidom

import _pods.data
from _pods.version import PODS_VERSION

class Command(object):
    def __init__(self, name, func, summary, detail):
        self.name = name
        self.func = func
        self.summary = summary
        self.detail = detail

class Template(object):
    def __init__(self, template_dir):
        info_fname = os.path.join(template_dir, "__template_info.xml")
        info_xml = minidom.parse(info_fname)
        root = info_xml.getElementsByTagName("pod_template")[0]
        manifest_data = root.getElementsByTagName("manifest")[0].firstChild.data

        self.manifest = [ line.strip() for line in manifest_data.split("\n") \
                if len(line.strip()) ]
        self.summary = root.getElementsByTagName("summary")[0].firstChild.data.strip()
        self.name = root.getElementsByTagName("name")[0].firstChild.data
        self.template_dir = template_dir

def info(msg):
    print msg

def fail(msg):
    sys.stderr.write(msg + "\n")
    sys.exit(1)

def _copy_data_file(data_file, dest):
    info("  " + dest)
    src = os.path.join(_pods.data.data_dir(), data_file)
    shutil.copyfile(src, dest)

def find_pod_dir(abort_on_failure=False):
    nlevels_to_check = 4
    pnames_checked = []
    for n in range(nlevels_to_check):
        if n == 0:
            parts = [ "." ]
        else:
            parts = [ ".." ] * n
        dirname = os.path.join(*parts)
        pname = os.path.join(dirname, "cmake", "pods.cmake")
        pnames_checked.append(pname)
        if os.path.exists(pname):
            return dirname
    if abort_on_failure:
        sys.stderr.write("Unable to find cmake/pods.cmake.  Tried:\n")
        for pname in pnames_checked:
            sys.stderr.write("   %s\n" % pname)
        sys.exit(1)
    return None

def _template_docs(base_dir):
    t_dir = os.path.join(_pods.data.data_dir(), base_dir)
    entries = os.listdir(t_dir)
    entries.sort()
    docs =  "  template     summary\n"
    docs += "  --------     -------\n"
    for entry in entries:
        try:
            template = Template(os.path.join(t_dir, entry))
        except IOError:
            continue
        docs += "  %-12s %s\n" % (entry, template.summary)
    return docs

def _instantiate_template(template, dest_dir, name, is_update):
    # create pod directory structure
    if dest_dir:
        os.chdir(dest_dir)
    if not is_update:
        if os.path.exists(name):
            fail("File/directory named %s already exists" % name)
        else:
            info("  %s/" % name)
            os.makedirs(name)

    # go through every file in the template and try to copy it into the
    # pod directory, replacing template variables as needed.
    for fname in template.manifest:
        src_name = os.path.join(template.template_dir, fname)
        if is_update:
            dst_name = fname
        else:
            dst_name = os.path.join(name, fname)
        dst_dirname = os.path.dirname(dst_name)
        # if a file exists, see if we want to overwrite it
        if os.path.exists(dst_name):
            if os.path.isdir(src_name):
                continue

            if is_update:
                s = ""
                if fname in [ "README", "CMakeLists.txt" ]:
                    info("  Ignoring  %-10s (never overwrite)" % dst_name)
                    s = "n"
                elif file(dst_name).read() == file(src_name).read():
                    info("  Ignoring  %-10s (no changes)" % dst_name)
                    s = "n"
                elif fname in [ "cmake/lcmtypes.cmake", "cmake/pods.cmake" ]:
                    s = "y"

                while not s or s not in "yYnN":
                    s = raw_input("  Overwrite %s? [y/N] " % dst_name).strip()
                if s not in "yY":
                    continue
        elif is_update:
            if fname.count("src")>0 or fname.count("lcmtypes")>0:
                info("  Ignoring  %-10s (never create)" % dst_name)
            continue
            s = raw_input("  Create    %s? [y/N] " % dst_name).strip()
            if not s or s not in "yY":
                continue

        # create the parent directory if necessary
        if dst_dirname!="" and not os.path.exists(dst_dirname):
            os.makedirs(dst_dirname)

        # copy the file in
        if os.path.isdir(src_name):
            info("  %s/" % dst_name)
            os.makedirs(dst_name)
        else:
            info("  " + dst_name)
            to_write = open(src_name).read().replace("${pod_name}", name)
            open(dst_name, "w").write(to_write)
            if to_write.startswith("#!"):
                os.chmod(dst_name, 0755)
    return 0

def create_pod_func(args):
    dest_dir = "."

    if len(args) != 2:
        help_func(("create-pod",))
        return 1

    template_name = args[0]
    pod_name = args[1]

    # is this a valid template?
    template_dir = os.path.join(_pods.data.data_dir(), 
            "pod-templates", 
            template_name)
    if not os.path.isdir(template_dir):
        fail("Invalid template [%s]" % template_name)

    template = Template(template_dir)

    info("Creating pod %s from template %s" % (pod_name, template_name))
    result = _instantiate_template(template, dest_dir, pod_name, False)
    if 0 == result:
        # automatically update tobuild.txt if it exists.  
        tobuild_fname = os.path.join(dest_dir, "tobuild.txt")
        if os.path.exists(tobuild_fname):
            # Add a line containing just the pod name, if that line isn't
            # already there.
            tobuild_file = file(tobuild_fname, "r+")
            existing_contents = tobuild_file.read()
            lines = existing_contents.split("\n")
            if not pod_name in [ line.strip() for line in lines ]:
                info("\nAutomatically adding %s to tobuild.txt" % pod_name)
                if not existing_contents.endswith("\n"):
                    tobuild_file.write("\n")
                tobuild_file.write("%s\n" % pod_name)

        info("\nDone.")
    return result

create_pod_cmd = Command("create-pod", 
        create_pod_func,
"Create a pod skeleton from a template",
"""
Usage: create-pod <template> NAME

Creates a new pod named NAME using the specified template.  
Available templates:

""" + _template_docs("pod-templates"))

def update_pod_func(args):
    #default to the current directory instead
    #if len(args) < 1:
    #    help_func(("update-pod",))
    #    return 1
    recursive = False
    dirs = args
    if ("-R" in args):
        recursive = True
        dirs.remove("-R")
    if (len(dirs)==0):
        dirs = ["./"]
        

    core_files = [ ("basic", "cmake/pods.cmake"),
                  ("basic", "Makefile"),
                  ("lcm", "cmake/lcmtypes.cmake") ]

    # read all template files into memory, for quick compare
    toreplace = []
    for template, template_fname in core_files:
        full_fname = os.path.join(_pods.data.data_dir(), "pod-templates", 
                    template, template_fname)
        contents = open(full_fname).read()
        toreplace.append((template_fname, contents, ""))

    # update each directory specified
    pods_found =0
    for dirname in dirs:
        if not os.path.exists(dirname):
            fail("Can't find directory %s" % dirname)

        # is the directory a pod?
        pods_fname = os.path.join(dirname, "cmake", "pods.cmake")
        if not os.path.exists(pods_fname):
            if not recursive:
                fail("Did not find " + pods_fname + "\nabort")
            else:
                #add subdirectories
                for d in os.listdir(dirname):
                    full_d = os.path.abspath(os.path.join(dirname,d))
                    if os.path.isdir(full_d) and d[0] != '.' and not d.startswith("build") and not d.startswith("pod-build"):  #don't recurse into . directories such as .svn
                        dirs.append(full_d)
                        #print "recursing into %s" % full_d
                continue
        pods_found = pods_found+1 
        #try:
        #    podxml = minidom.parse(podxml_fname)
        #    pod_node = podxml.getElementsByTagName("pod")[0]
        #    pod_name = pod_node.getElementsByTagName("name")[0].firstChild.data
        #except Exception, ex:
        #    print ex
        #    fail("Unable to parse " + podxml_fname)
        #    continue

        # check each template file listed above to see if it's in the pod
        for i in range(0,len(toreplace)):
            template_file, template_file_contents, default_answer = toreplace[i]
            dst_fname = os.path.join(dirname, template_file)
            if not os.path.exists(dst_fname):
                continue

            # don't do anything if the file is already up-to-date
            dst_file_contents = file(dst_fname).read()
            if dst_file_contents == template_file_contents:
                info("  up-to-date: " + dst_fname)
                continue

            # prompt user to overwrite
            s = default_answer
            while not s or s not in "ynas":
                s = raw_input("Overwrite %s? [y/n/a/s (a/s: replace/skip all %s's )] " % ((dst_fname).strip(), template_file))

            if s in "ya" and template_file == "Makefile":
                makefile_header_len = 50 # ie: "# Default makefile distributed with pods version"
                if dst_file_contents[0:makefile_header_len]!= template_file_contents[0:makefile_header_len]:
                    s=""
                    while not s or s not in "yn":
                        s = raw_input("Makefile does not have pods header, are you sure you want to overwrite? [y/n] ")

            if s == "a":
                s = "y"
                toreplace[i] = (template_file, template_file_contents,"y")
            elif s == "s":
                s = "n"
                toreplace[i] = (template_file, template_file_contents,"n")
                
            if s != "y":
                info("  skipping: " + dst_fname)
                continue

            # copy the file in
            info("  replacing: " + dst_fname)
            open(dst_fname, "w").write(template_file_contents)
    if (pods_found>0):
        info("Done updating %d pods" % pods_found)
    else:
        info("No pods found! Use the -R option to search recursively")
    return 0

update_pod_cmd = Command("update-pod",
        update_pod_func,
"Updates core template files in one or more pods",
"""
Usage: update-pod [-R] [<directory1> <directory2> [...]]

  Updates core template files in one or more pods.
      Searches for pods in the current directory OR the directories provided
      -R option makes it recursively search the directories for pods

  As newer versions of important pods template files become available
  (e.g., cmake/pods.cmake), you may want to update a pod to use them.  This
  command is a convenience tool for replacing existing files with newer
  versions.  
 
  Only replaces files that a pod user/developer is not expected to change.
  Prompts the user before replacing files.  No backups are made, so create
  your own if you're not sure you want to update the pod.

""")

def create_collection_func(args):
    dest_dir = "."

    if len(args) != 1:
        help_func(("create-collection",))
        return 1

#    template_name = args[0]
    template_name = "basic"
    collection_name = args[0]

    # is this a valid template?
    template_dir = os.path.join(_pods.data.data_dir(), 
            "collection-templates", 
            template_name)
    if not os.path.isdir(template_dir):
        fail("Invalid template [%s]" % template_name)
    template = Template(template_dir)

    info("Creating pods collection %s" % collection_name)
    result = _instantiate_template(template, dest_dir, collection_name, False)
    if not result:
        # automatically update tobuild.txt if it exists.
        tobuild_fname = os.path.join(dest_dir, "tobuild.txt")
        if os.path.exists(tobuild_fname):
            # Add a line containing just the pod name, if that line isn't
            # already there.
            tobuild_file = file(tobuild_fname, "r+")
            existing_contents = tobuild_file.read()
            lines = existing_contents.split("\n")
            if not collection_name in [ line.strip() for line in lines ]:
                info("\nAutomatically adding %s to tobuild.txt" % collection_name)
                if not existing_contents.endswith("\n"):
                    tobuild_file.write("\n")
                tobuild_file.write("%s\n" % collection_name)

       
        
        info("")
        info("Done.")
        info("You can now create new pods with \"pods create-pod\" in %s," % collection_name)
        info("or copy existing pods in to %s\n" % collection_name)
    return result
# ==
create_collection_cmd = Command("create-collection", 
        create_collection_func,
"Create a pod collection",
"""
Usage: create-collection NAME

Creates a new collection named NAME, and populates a basic directory structure.
A collection is the recommended way of organizing multiple pods.

Collections can store sub collections.

""")




def help_func(args):
    if not args:
        usage()
    else:
        cmd_name = args[0]
        cmd = _get_command(cmd_name)
        if not cmd:
            sys.stdout.write("Invalid command %s\n" % cmd_name)
            return 1
        sys.stdout.write(cmd.detail)
    return 0 
# ==
help_cmd = Command("help", help_func,
    "Show this help text",
"""Usage:

help <command-name>

    Displays information 
""")

def version_func(args):
    sys.stdout.write("Pods build system template (version %s)\n" % PODS_VERSION)
    return 0
version_cmd = Command("version", version_func, "Show version information", 
"""Show version information
""")

COMMANDS = [ \
        create_pod_cmd,
        create_collection_cmd,
        help_cmd,
        update_pod_cmd,
        version_cmd,
        ]

def _get_command(cmd_name):
    for cmd in COMMANDS:
        if cmd.name == cmd_name:
            return cmd
    return None

def usage():
    out = sys.stderr
    progname = os.path.basename(sys.argv[0])
    out.write("Usage: %s <command> <command params...>\n" % progname)
    out.write("\n")
    out.write("Commands:\n")
    for cmd in COMMANDS:
        if cmd.summary is not None:
            out.write("  %-17s  %s\n" % (cmd.name, cmd.summary))
        else:
            out.write("%17s\n" % cmd.name)
    out.write("\n")
    out.write("For additional information on individual commands, run:\n")
    out.write("  %s help <cmd-name>\n" % progname)
    out.write("\n")
    sys.exit(1)

def main(args):
    if len(args) < 2:
        usage()

    args = args[1:]
    cmd_name = args.pop(0)

    cmd = _get_command(cmd_name)
    if cmd:
        try:
            sys.exit(cmd.func(args))
        except TypeError:
            usage()
        except KeyboardInterrupt:
            print
            pass
    else:
        sys.stderr.write("Unrecognized command\n\n")
        usage()
