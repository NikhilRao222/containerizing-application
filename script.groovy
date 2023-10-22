def buildApp(){
    echo 'building application'
}
def testApp(){
    echo 'tetsing application'
}
def deplyApp(){
    echo 'deploying application'
    echo "deploying version ${params.VERSION}"
} 

resturn this
