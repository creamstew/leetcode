# 部分部分で検証するという発想に至れなかった
# 正規表現で解決しようとしたが、予想以上に難しかった。

def num_unique_emails(emails)
    #＋から@までを削除、@より前の.は削除
    x = []
    emails.each{ |email|
        parts = email.split(/[@+]/)
        x << parts[0].delete(".") + "@" + parts.last
    }
    return x.uniq.size
end