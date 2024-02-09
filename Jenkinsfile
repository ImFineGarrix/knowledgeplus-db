pipeline {
    agent any

    stages {
        stage('Remove') {
            steps {
                script {
                    sh 'docker rm -f mysql-container-${ENV} || true'
                    sh 'docker image prune -af'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'docker build -t sj2mysql-${ENV}:latest .'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh '''
                        docker run -d \
                          --name mysql-container-${ENV} \
                          -e MYSQL_ROOT_PASSWORD=cp23sj2 \
                          -e MYSQL_DATABASE=INT371 \
                          -p 3306:3306 \
                          --network ${ENV} \
                          --restart always \
                          sj2mysql-${ENV}:latest
                    '''
                }
            }
        }
    }
}
