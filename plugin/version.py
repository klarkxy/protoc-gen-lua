import os
import git

PWD = os.path.abspath(os.path.split(__file__)[0])

repo = git.Repo(os.path.join(PWD, ".."))

print(repo.active_branch)