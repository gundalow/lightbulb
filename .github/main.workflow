workflow "New workflow" {
  on = "push"
  resolves = ["ansible/ansible-lint-action@master"]
}

action "ansible/ansible-lint-action@master" {
  uses = "ansible/ansible-lint-action@master"
  env = {
    ACTION_PLAYBOOK_NAME = "tools/aws_lab_setup/provision_lab.yml"
  }
}
