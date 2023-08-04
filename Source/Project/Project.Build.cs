// Copyright Epic Games, Inc. All Rights Reserved.
using System.IO;
using UnrealBuildTool;

public class Project : ModuleRules
{
	public Project(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "HeadMountedDisplay", "EnhancedInput" });
		PublicIncludePaths.Add(Path.Combine(ModuleDirectory, "../../deps/icp-client-cpp/lib-agent-c/inc"));
		PublicIncludePaths.Add(Path.Combine(ModuleDirectory, "../../deps/icp-client-cpp/lib-agent-cpp/inc"));
		PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "../../deps/icp-client-cpp/ic-agent-wrapper/target/release", "libic_agent_wrapper.a"));
        PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "../../deps/icp-client-cpp/build", "libagent_c.a"));
        PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "../../deps/icp-client-cpp/build", "libagent_cpp.a"));

	}
}
