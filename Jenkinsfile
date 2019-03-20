node {
    def app

stage('clone repository') {
    /*lets make sure we have the repository cloned to our workplace*/

    checkout scm
}

// stage(Build image){
//     /*this builds the actual imahe; synonymous to
//     * dicker build on the command line */

//     app=docker.build("cicd/testbuild")
// }
stage(Build image){
    /*this builds the actual imahe; synonymous to
    * dicker build on the command line */

    // app=docker.build("cicd/testbuild")
    sh docker build .
}
stage('Test image'){
    /* ideally, we would run a test framework againts our image.
    * For this example, we are uisng volkwagen-type approach */

    app.inside {
        sh 'echo "test passed"'

    }
}
stage('push image'){
    /* finally, we'll push the image with two tags:
    * First, the incremental build from jenkins
    * seconf, the 'latest'tag. 
    * pushing multiple tag is cheap, as all the layers are reused. */
    docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials'){
        app.push("${env.BUILD_NUMBER}")
        app.push("latest")
}
}
}
