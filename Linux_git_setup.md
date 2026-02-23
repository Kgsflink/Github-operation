
1. **SSH Key** (Sabse best & recommended for Linux/Kali – ek baar setup, hamesha password nahi maangega)
2. **Personal Access Token (PAT)** (HTTPS wala, thoda inconvenient)


### Option 1: SSH Key Setup (Recommended – 5 minute ka kaam)

**Step 1: SSH Key generate karo (agar nahi hai)**
```bash
cd ~
ls ~/.ssh/          # check karo pehle
ssh-keygen -t ed25519 -C "kgsflink@gmail.com"   # apna email daal do
# Enter dabate jao (passphrase optional, lekin daal sakte ho)
```

**Step 2: SSH Agent start + key add karo**
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

**Step 3: Public key copy karo**
```bash
cat ~/.ssh/id_ed25519.pub
```
(Poora text copy kar lo – shuru hota hai `ssh-ed25519 AAAAC...` se)

**Step 4: GitHub pe add karo**
1. GitHub pe login → Profile photo → **Settings**
2. Left side → **SSH and GPG keys**
3. **New SSH key** → Title: `Kali Linux`  
   Key box mein paste karo → **Add SSH key**

**Step 5: Test connection**
```bash
ssh -T git@github.com
```
Agar "Hi Kgsflink! You've successfully authenticated..." aaye → done! ✅

**Step 6: Apna remote HTTPS se SSH mein change karo**
```bash
cd ~/HeartSafe
git remote -v                  # check karo abhi HTTPS dikhega
git remote set-url origin git@github.com:Kgsflink/HeartSafe.git
git remote -v                  # ab SSH dikhega
```

**Step 7: Ab push karo**
```bash
git push -u origin main
```

**Ho gaya!** Ab kabhi password nahi maangega.



### Option 2: PAT (HTTPS) – Agar SSH nahi karna chahte

1. GitHub → Settings → Developer settings → **Personal access tokens** → **Tokens (classic)**
2. **Generate new token** → Note: `HeartSafe Push`
3. Select scopes: **repo** (full control) → Generate
4. Token copy kar lo (ek baar hi dikhega!)

Phir:
```bash
cd ~/HeartSafe
git remote set-url origin https://github.com/Kgsflink/HeartSafe.git
git push
```
→ Username: `Kgsflink`  
→ Password: **PAT paste karo** (token)

Agar baar-baar maange toh credential store karo:
```bash
git config --global credential.helper store
```

### Extra Kali Linux Tips (Common issues)

```bash
# Cached wrong password clear karne ke liye
git config --global --unset credential.helper
git credential reject
# phir protocol=https
# host=github.com
# (Ctrl+D dabaao)

# SSH install hai ya nahi check
sudo apt update && sudo apt install openssh-client -y
```
