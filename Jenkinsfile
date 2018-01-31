pipeline {
  agent any
  stages {
    stage('Dev') {
      steps {
        build(job: 'CheckStyleJob', propagate: true)
      }
    }
    stage('PMD') {
      steps {
        build 'PMDJob'
      }
    }
    stage('JaCoCo') {
      steps {
        build(job: 'JaCoCoFindBugJob', wait: true)
      }
    }
  }
}