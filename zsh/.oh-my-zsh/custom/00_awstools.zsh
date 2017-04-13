ass(){    
    tmpFile=/tmp/assume.tmp
    awstools assume --export $tmpFile --export-profile $* && source $tmpFile
    rm $tmpFile
}
