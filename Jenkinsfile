pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'akali'
    }
  }
  stages {
    stage('test') {
      steps {
        sh '/usr/sbin/sshd -D & sleep 120'
      }
    }
  }
}
