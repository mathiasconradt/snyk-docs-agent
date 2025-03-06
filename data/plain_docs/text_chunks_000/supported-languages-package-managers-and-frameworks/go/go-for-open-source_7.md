Go modules Projects that rely on modules from private Git repositories are supported if those repositories are in the same Git organization as the main project repository.
If you have private modules in repositories from other Git organizations, your Project imports may not work properly. The same is true if your code uses Git Submodules from another organization.
If your private modules have other private modules from another Git organization, your Project imports will not work. All private modules, including the ones within other modules, need to be part of the same Git organization as the main project repository.
Private module support in different SCMs varies depending on whether full source code analysis is enabled or disabled.
| Full source code analysis enabled                                                                                                      | Full source code analysis disabled                                                |
| -------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| Azure ReposBitbucket CloudBitbucket ServerGitHubGitLabGitHub Enterprise | Bitbucket CloudGitHubGitHub Enterprise |
