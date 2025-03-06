Copy of this public key is also in this repository /help/_about-this-project/snyk-code-signing-public.pgp
gpg --keyserver hkps://keys.openpgp.org --recv-keys A22665FB96CAB0E0973604C83676C4B8289C296E
```
Then verify the file is signed with:
gpg --verify sha256sums.txt.asc
The command output should look like the following:
gpg: Signature made So  8 Jan 14:11:44 2025 CET
gpg:                using EDDSA key 467717A30B2B4658415975629691DA64D0025194
gpg: Good signature from "Snyk Limited <code-signing@snyk.io>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 4677 17A3 0B2B 4658 4159  7562 9691 DA64 D002 5194
