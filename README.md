# Change your samba password from mac
When working in a Windows environment you might need to change the domain password.

Latest mac versions do not bring `smbpasswd` anymore and command `kpasswd` is a little bit unreliable. Use a linux docker container to change the password!

# How to change your password
Run the image passing the following parameters:

1) The remote machine name. The NetBIOS name of the SMB/CIFS server to contact to attempt the password change.
2) Your username

For instance:

    docker run -it alombarte/samba-change-password domain.local user.name

