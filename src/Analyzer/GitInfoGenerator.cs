﻿using Microsoft.CodeAnalysis;

[Generator(LanguageNames.CSharp)]
class GitInfoGenerator : IIncrementalGenerator
{
    public void Initialize(IncrementalGeneratorInitializationContext context)
    {
        var ns = context.AnalyzerConfigOptionsProvider
            .Select((c, _) => new
            {
                Namespace = c.GlobalOptions.TryGetValue("build_property.ThisAssemblyNamespace", out var ns)
                    && !string.IsNullOrEmpty(ns) ? ns : null,
                IsDirty = c.GlobalOptions.TryGetValue("build_property.GitIsDirty", out var dirty)
                    && dirty == "1" ? true : false
            });

        context.RegisterSourceOutput(ns,
            (c, state) =>
            {
                // Legacy codegen used for this scenario, emit nothing.
                if (!string.IsNullOrEmpty(state.Namespace))
                    return;

                c.AddSource("ThisAssembly.Git.IsDirty.g",
                    $$"""
                    //------------------------------------------------------------------------------
                    // <auto-generated>
                    //     This code was generated by a tool.
                    //
                    //     GitInfo: {{ThisAssembly.Info.InformationalVersion}}
                    //
                    //     Changes to this file may cause incorrect behavior and will be lost if
                    //     the code is regenerated.
                    // </auto-generated>
                    //------------------------------------------------------------------------------

                    partial class ThisAssembly
                    {
                        partial class Git
                        {
                            /// <summary>
                            /// Gets whether the current repository is dirty.
                            /// </summary>
                            public const bool IsDirty = {{(state.IsDirty ? "true" : "false")}};
                        }
                    }
                    """);
            });
    }
}