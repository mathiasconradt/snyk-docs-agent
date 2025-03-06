It's a good idea to encrypt the data we'll be pulling out of the API. We will define a small class for doing so. The class has two members:

secret: The key used to encrypt data
cryptr: Instance of the Cryptr library

```typescript
// ./src/util/encrypt-decrypt.ts
import Cryptr from "cryptr";
export class EncryptDecrypt {
  private secret: string;
  private cryptr: Cryptr;
constructor(secret: string) {
    // Uses the passed secret
    this.secret = secret as string;
    // Initialize the Cryptr instance with the secret
    this.cryptr = new Cryptr(this.secret);
  }
/
   * Function used to encrypt data
   * @param  message to be encrypted
   * @returns  encrypter message
   */
  public encryptString(message: string): string {
    return this.cryptr.encrypt(message);
  }
  /
   * Function used to decrypt data
   * @param   encryptedString to be decrypted
   * @returns  decrypted string
   */
  public decryptString(encryptedString: string): string {
    return this.cryptr.decrypt(encryptedString);
  }
}
```
