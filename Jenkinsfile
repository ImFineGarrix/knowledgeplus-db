pipeline {
    agent any

        stage('Remove Old MySQL Container') {
            steps {
                script {
                    sh 'docker rm -f mysql-container-dev || true'
                    sh 'docker image prune -af'
                }
            }
        }

    stages {
        stage('Build MySQL Docker Image') {
            steps {
                script {
                    sh 'docker build -t sj2mysql-dev:latest .'
                }
            }
        }

        stage('Deploy MySQL Container') {
            steps {
                script {
                    sh '''
                        docker run -d \
                          --name mysql-container-dev \
                          -e MYSQL_ROOT_PASSWORD=cp23sj2 \
                          -e MYSQL_DATABASE=INT371 \
                          -v ./scripts:/docker-entrypoint-initdb.d/ \
                          -p 3306:3306 \
                          --network dev \
                          --restart always \
                          sj2mysqldev:latest
                    '''
                }
            }
        }
    }
}
