# SFTP Upload Docker Action

This action prints automatically uploads files to an SFTP server.

## Inputs

### `username`

**Required** The username to access the SFTP server.

### `server`

**Required** The hostname of the SFTP server.

### `port`

**Required** The port of the SFTP server. Defaults to 22.

### `ssh_private_key`

**Required** An SSH private key to use to access the server.

### `local_path`

**Required** The path of the files to upload. Defaults to `./*`.

### `remote_path`

**Required** The path on the server to upload the files to. Defaults to `/`.

## Example Usage

```yaml
uses: actions/SFTP-Deploy@v1
with:
    username: 'root'
    server: 'Your Server IP'
    ssh_private_key: ${{ secrets.SSH_PRIVATE_KEY }}
    local_path: './build/\*'
    remote_path: '/'
```
