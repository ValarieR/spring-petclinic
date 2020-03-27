pipeline {
    agent none
    stages {     
        stage('Maven Install') {
            agent {         
            docker {          
                image 'maven:3.5.0'         
                }       
            }  
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            agent any
            steps {
                sh 'docker build -f /spring-petclinic/Dockerfile -t valarier/spring-petclinic:testing .'
                sh 'docker push -t valarier/spring-petclinic:testing .'
            }
        }
        // adding artifactory, time permitting
        // stage ('Artifactory configuration') {
        //     steps {
        //         rtServer (
        //             id: "ARTIFACTORY_SERVER",
        //             url: SERVER_URL,
        //             credentialsId: CREDENTIALS
        //         )

        //         rtMavenDeployer (
        //             id: "MAVEN_DEPLOYER",
        //             serverId: "ARTIFACTORY_SERVER",
        //             releaseRepo: "libs-release-local",
        //             snapshotRepo: "libs-snapshot-local"
        //         )

        //         rtMavenResolver (
        //             id: "MAVEN_RESOLVER",
        //             serverId: "ARTIFACTORY_SERVER",
        //             releaseRepo: "libs-release",
        //             snapshotRepo: "libs-snapshot"
        //         )
        //     }
        // }
        // stage ('Exec Maven') {
        //         steps {
        //             rtMavenRun (
        //                 tool: MAVEN_TOOL, // Tool name from Jenkins configuration
        //                 pom: 'maven-example/pom.xml',
        //                 goals: 'clean install',
        //                 deployerId: "MAVEN_DEPLOYER",
        //                 resolverId: "MAVEN_RESOLVER"
        //             )
        //         }
        //     }

        //     stage ('Publish build info') {
        //         steps {
        //             rtPublishBuildInfo (
        //                 serverId: "ARTIFACTORY_SERVER"
        //             )
        //         }
        //     }
        }
    }