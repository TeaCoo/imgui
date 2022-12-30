project "ImGui"
  kind "StaticLib"
  language "C++"
  
  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
  
  files
  {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imgui_tables.cpp",
    "imstb_truetype.h",
    "imgui_demo.cpp",
	"./backends/imgui_impl_opengl3.h",
	"./backends/imgui_impl_opengl3.cpp",
	"./backends/imgui_impl_glfw.h",
	"./backends/imgui_impl_glfw.cpp",
  }

	includedirs
	{
		"./",
		"./examples/libs/glfw/include/"
	}

  filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"
	
    buildoptions 
    {
	    "/MT"
	  }
    
  filter "configurations:Debug"
    runtime "Debug"
    symbols "On"
	
  filter "configurations:Release"
    runtime "Release"
    optimize "On"
