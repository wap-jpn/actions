# Trying out Github Actions

In this repository I am trying out Github Actions for the first time.

# Scripts
In the .github directory I have three scripts to perform the following:

1. Takes a backup of an nginx site to a local disk
2. Deploys a new site from a zip file and restarts nginx
3. Checks if /new-site.html on the new site returns response code 200, and if not, rolls back

# Workflows
In the .github/workflows there are two workflows, one to perform the backup, and the second to do a deployment (including the check)
