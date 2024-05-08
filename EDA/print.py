import hashlib

BUFSIZE=65536
filename='activity.txt'
sha = hashlib.sha256()

def file_to_sha(filename) -> str:

    with open(filename, 'rb') as f:
        while True:
            data = f.read(BUFSIZE)
            if not data:
                break
            sha.update(data)

    return sha.hexdigest()

def string_to_sha(s: str) -> str:
    sha = hashlib.sha256(s.encode())
    return sha.hexdigest()


print(file_to_sha(filename))

with open(filename) as f:
    print(string_to_sha(f.read()))