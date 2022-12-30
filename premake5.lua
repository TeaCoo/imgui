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
