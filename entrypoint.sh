SSH_PRIVATE_KEY_FILE='../ssh_private_key.pem'
SFTP_BATCH_FILE='../sftp'

printf "%s" "$4" > $SSH_PRIVATE_KEY_FILE

chmod 600 $SSH_PRIVATE_KEY_FILE

echo 'Starting SFTP...'
printf "%s" "put -r $5 $6" > $SFTP_BATCH_FILE

sftp -b $SFTP_BATCH_FILE -P $3 -i $SSH_PRIVATE_KEY_FILE $1@$2

echo 'Deploy successful!'
exit 0