# Autogenerated wrapper script for Xorg_xkbcomp_jll for arm-linux-musleabihf
export xkbcomp

using Xorg_libxkbfile_jll
using Xorg_util_macros_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `xkbcomp`
const xkbcomp_splitpath = ["bin", "xkbcomp"]

# This will be filled out by __init__() for all products, as it must be done at runtime
xkbcomp_path = ""

# xkbcomp-specific global declaration
function xkbcomp(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(xkbcomp_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Xorg_libxkbfile_jll.PATH_list, Xorg_util_macros_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_libxkbfile_jll.LIBPATH_list, Xorg_util_macros_jll.LIBPATH_list,))

    global xkbcomp_path = abspath(joinpath(artifact"Xorg_xkbcomp", xkbcomp_splitpath...))

    push!(PATH_list, dirname(xkbcomp_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

