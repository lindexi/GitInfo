// <auto-generated />
/// <summary>Provides access to the current assembly information.</summary>
module ThisAssembly

/// <summary>Provides access to the git information for the current assembly.</summary>
module Git =
    /// <summary>IsDirty: $GitIsDirty$</summary>
    let [<Literal>] IsDirty = $GitIsDirty$

    /// <summary>IsDirtyString: $GitIsDirty$</summary>
    let [<Literal>] IsDirtyString = @"$GitIsDirty$"

    /// <summary>Repository URL: $GitRepositoryUrl$</summary>
    let [<Literal>] RepositoryUrl = @"$GitRepositoryUrl$"

    /// <summary>Branch: $GitBranch$</summary>
    let [<Literal>] Branch = @"$GitBranch$"

    /// <summary>Commit: $GitCommit$</summary>
    let [<Literal>] Commit = @"$GitCommit$"

    /// <summary>Sha: $GitSha$</summary>
    let [<Literal>] Sha = @"$GitSha$"

    /// <summary>Commit date: $GitCommitDate$</summary>
    let [<Literal>] CommitDate = @"$GitCommitDate$"

    /// <summary>Commits on top of base version: $GitCommits$</summary>
    let [<Literal>] Commits = @"$GitCommits$"

    /// <summary>Tag: $GitTag$</summary>
    let [<Literal>] Tag = @"$GitTag$"

    /// <summary>Base tag: $GitBaseTag$</summary>
    let [<Literal>] BaseTag = @"$GitBaseTag$"

    /// <summary>Provides access to the base version information used to determine the <see cref="SemVer" />.</summary>
    module BaseVersion =
        /// <summary>Major: $GitBaseVersionMajor$</summary>
        let [<Literal>] Major = @"$GitBaseVersionMajor$"

        /// <summary>Minor: $GitBaseVersionMinor$</summary>
        let [<Literal>] Minor = @"$GitBaseVersionMinor$"

        /// <summary>Patch: $GitBaseVersionPatch$</summary>
        let [<Literal>] Patch = @"$GitBaseVersionPatch$"

    /// <summary>Provides access to SemVer information for the current assembly.</summary>
    module SemVer =
        /// <summary>Major: $GitSemVerMajor$</summary>
        let [<Literal>] Major = @"$GitSemVerMajor$"

        /// <summary>Minor: $GitSemVerMinor$</summary>
        let [<Literal>] Minor = @"$GitSemVerMinor$"

        /// <summary>Patch: $GitSemVerPatch$</summary>
        let [<Literal>] Patch = @"$GitSemVerPatch$"

        /// <summary>Label: $GitSemVerLabel$</summary>
        let [<Literal>] Label = @"$GitSemVerLabel$"

        /// <summary>Label with dash prefix: $GitSemVerDashLabel$</summary>
        let [<Literal>] DashLabel = @"$GitSemVerDashLabel$"

        /// <summary>Source: $GitSemVerSource$</summary>
        let [<Literal>] Source = @"$GitSemVerSource$"
