#!/bin/bash
curl -X POST --location "http://localhost:9000/webhook" \
    -H "Accept: */*" \
    -H "Content-Type: application/json" \
    -H "User-Agent: GitHub-Hookshot/922ffd2" \
    -H "X-GitHub-Delivery: 57575c08-adfd-11ef-8fe5-b99f99c6711e" \
    -H "X-GitHub-Event: push" \
    -H "X-GitHub-Hook-ID: 515694423" \
    -H "X-GitHub-Hook-Installation-Target-ID: 895411082" \
    -H "X-GitHub-Hook-Installation-Target-Type: repository" \
    -d '{
          "ref": "refs/heads/main",
          "before": "6200ce8d6c905d7c50ccda875c3945e780299008",
          "after": "36aabfc176d65bab9b85a03afd41bd7e7dc2bf20",
          "repository": {
            "id": 893654786,
            "node_id": "R_kgDONUQXAg",
            "name": "hrsass",
            "full_name": "lifejwang11/hrsass",
            "private": true,
            "owner": {
              "name": "lifejwang11",
              "email": "42738764+lifejwang11@users.noreply.github.com",
              "login": "lifejwang11",
              "id": 42738764,
              "node_id": "MDQ6VXNlcjQyNzM4NzY0",
              "avatar_url": "https://avatars.githubusercontent.com/u/42738764?v=4",
              "gravatar_id": "",
              "url": "https://api.github.com/users/lifejwang11",
              "html_url": "https://github.com/lifejwang11",
              "followers_url": "https://api.github.com/users/lifejwang11/followers",
              "following_url": "https://api.github.com/users/lifejwang11/following{/other_user}",
              "gists_url": "https://api.github.com/users/lifejwang11/gists{/gist_id}",
              "starred_url": "https://api.github.com/users/lifejwang11/starred{/owner}{/repo}",
              "subscriptions_url": "https://api.github.com/users/lifejwang11/subscriptions",
              "organizations_url": "https://api.github.com/users/lifejwang11/orgs",
              "repos_url": "https://api.github.com/users/lifejwang11/repos",
              "events_url": "https://api.github.com/users/lifejwang11/events{/privacy}",
              "received_events_url": "https://api.github.com/users/lifejwang11/received_events",
              "type": "User",
              "user_view_type": "public",
              "site_admin": false
            },
            "html_url": "https://github.com/lifejwang11/hrsass",
            "description": null,
            "fork": false,
            "url": "https://github.com/lifejwang11/hrsass",
            "forks_url": "https://api.github.com/repos/lifejwang11/hrsass/forks",
            "keys_url": "https://api.github.com/repos/lifejwang11/hrsass/keys{/key_id}",
            "collaborators_url": "https://api.github.com/repos/lifejwang11/hrsass/collaborators{/collaborator}",
            "teams_url": "https://api.github.com/repos/lifejwang11/hrsass/teams",
            "hooks_url": "https://api.github.com/repos/lifejwang11/hrsass/hooks",
            "issue_events_url": "https://api.github.com/repos/lifejwang11/hrsass/issues/events{/number}",
            "events_url": "https://api.github.com/repos/lifejwang11/hrsass/events",
            "assignees_url": "https://api.github.com/repos/lifejwang11/hrsass/assignees{/user}",
            "branches_url": "https://api.github.com/repos/lifejwang11/hrsass/branches{/branch}",
            "tags_url": "https://api.github.com/repos/lifejwang11/hrsass/tags",
            "blobs_url": "https://api.github.com/repos/lifejwang11/hrsass/git/blobs{/sha}",
            "git_tags_url": "https://api.github.com/repos/lifejwang11/hrsass/git/tags{/sha}",
            "git_refs_url": "https://api.github.com/repos/lifejwang11/hrsass/git/refs{/sha}",
            "trees_url": "https://api.github.com/repos/lifejwang11/hrsass/git/trees{/sha}",
            "statuses_url": "https://api.github.com/repos/lifejwang11/hrsass/statuses/{sha}",
            "languages_url": "https://api.github.com/repos/lifejwang11/hrsass/languages",
            "stargazers_url": "https://api.github.com/repos/lifejwang11/hrsass/stargazers",
            "contributors_url": "https://api.github.com/repos/lifejwang11/hrsass/contributors",
            "subscribers_url": "https://api.github.com/repos/lifejwang11/hrsass/subscribers",
            "subscription_url": "https://api.github.com/repos/lifejwang11/hrsass/subscription",
            "commits_url": "https://api.github.com/repos/lifejwang11/hrsass/commits{/sha}",
            "git_commits_url": "https://api.github.com/repos/lifejwang11/hrsass/git/commits{/sha}",
            "comments_url": "https://api.github.com/repos/lifejwang11/hrsass/comments{/number}",
            "issue_comment_url": "https://api.github.com/repos/lifejwang11/hrsass/issues/comments{/number}",
            "contents_url": "https://api.github.com/repos/lifejwang11/hrsass/contents/{+path}",
            "compare_url": "https://api.github.com/repos/lifejwang11/hrsass/compare/{base}...{head}",
            "merges_url": "https://api.github.com/repos/lifejwang11/hrsass/merges",
            "archive_url": "https://api.github.com/repos/lifejwang11/hrsass/{archive_format}{/ref}",
            "downloads_url": "https://api.github.com/repos/lifejwang11/hrsass/downloads",
            "issues_url": "https://api.github.com/repos/lifejwang11/hrsass/issues{/number}",
            "pulls_url": "https://api.github.com/repos/lifejwang11/hrsass/pulls{/number}",
            "milestones_url": "https://api.github.com/repos/lifejwang11/hrsass/milestones{/number}",
            "notifications_url": "https://api.github.com/repos/lifejwang11/hrsass/notifications{?since,all,participating}",
            "labels_url": "https://api.github.com/repos/lifejwang11/hrsass/labels{/name}",
            "releases_url": "https://api.github.com/repos/lifejwang11/hrsass/releases{/id}",
            "deployments_url": "https://api.github.com/repos/lifejwang11/hrsass/deployments",
            "created_at": 1732496043,
            "updated_at": "2024-11-28T03:58:07Z",
            "pushed_at": 1732861036,
            "git_url": "git://github.com/lifejwang11/hrsass.git",
            "ssh_url": "git@github.com:lifejwang11/hrsass.git",
            "clone_url": "https://github.com/lifejwang11/hrsass.git",
            "svn_url": "https://github.com/lifejwang11/hrsass",
            "homepage": null,
            "size": 16992,
            "stargazers_count": 0,
            "watchers_count": 0,
            "language": "TypeScript",
            "has_issues": true,
            "has_projects": true,
            "has_downloads": true,
            "has_wiki": false,
            "has_pages": false,
            "has_discussions": false,
            "forks_count": 0,
            "mirror_url": null,
            "archived": false,
            "disabled": false,
            "open_issues_count": 0,
            "license": null,
            "allow_forking": true,
            "is_template": false,
            "web_commit_signoff_required": false,
            "topics": [

            ],
            "visibility": "private",
            "forks": 0,
            "open_issues": 0,
            "watchers": 0,
            "default_branch": "main",
            "stargazers": 0,
            "master_branch": "main"
          },
          "pusher": {
            "name": "Yzgfc",
            "email": "38353672+Yzgfc@users.noreply.github.com"
          },
          "sender": {
            "login": "Yzgfc",
            "id": 38353672,
            "node_id": "MDQ6VXNlcjM4MzUzNjcy",
            "avatar_url": "https://avatars.githubusercontent.com/u/38353672?v=4",
            "gravatar_id": "",
            "url": "https://api.github.com/users/Yzgfc",
            "html_url": "https://github.com/Yzgfc",
            "followers_url": "https://api.github.com/users/Yzgfc/followers",
            "following_url": "https://api.github.com/users/Yzgfc/following{/other_user}",
            "gists_url": "https://api.github.com/users/Yzgfc/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/Yzgfc/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/Yzgfc/subscriptions",
            "organizations_url": "https://api.github.com/users/Yzgfc/orgs",
            "repos_url": "https://api.github.com/users/Yzgfc/repos",
            "events_url": "https://api.github.com/users/Yzgfc/events{/privacy}",
            "received_events_url": "https://api.github.com/users/Yzgfc/received_events",
            "type": "User",
            "user_view_type": "public",
            "site_admin": false
          },
          "created": false,
          "deleted": false,
          "forced": false,
          "base_ref": null,
          "compare": "https://github.com/lifejwang11/hrsass/compare/6200ce8d6c90...36aabfc176d6",
          "commits": [
            {
              "id": "36aabfc176d65bab9b85a03afd41bd7e7dc2bf20",
              "tree_id": "77206ad4f2dd72005b24eb965cbae6f153766d44",
              "distinct": true,
              "message": "- test webhook",
              "timestamp": "2024-11-29T14:14:56+08:00",
              "url": "https://github.com/lifejwang11/hrsass/commit/36aabfc176d65bab9b85a03afd41bd7e7dc2bf20",
              "author": {
                "name": "sakura",
                "email": "yjh1670814592@outlook.com",
                "username": "Yzgfc"
              },
              "committer": {
                "name": "sakura",
                "email": "yjh1670814592@outlook.com",
                "username": "Yzgfc"
              },
              "added": [

              ],
              "removed": [

              ],
              "modified": [
                "web/src/app/user/user-profile.tsx"
              ]
            }
          ],
          "head_commit": {
            "id": "36aabfc176d65bab9b85a03afd41bd7e7dc2bf20",
            "tree_id": "77206ad4f2dd72005b24eb965cbae6f153766d44",
            "distinct": true,
            "message": "- test webhook",
            "timestamp": "2024-11-29T14:14:56+08:00",
            "url": "https://github.com/lifejwang11/hrsass/commit/36aabfc176d65bab9b85a03afd41bd7e7dc2bf20",
            "author": {
              "name": "sakura",
              "email": "yjh1670814592@outlook.com",
              "username": "Yzgfc"
            },
            "committer": {
              "name": "sakura",
              "email": "yjh1670814592@outlook.com",
              "username": "Yzgfc"
            },
            "added": [

            ],
            "removed": [

            ],
            "modified": [
              "web/src/app/user/user-profile.tsx"
            ]
          }
        }'