Senaryo: Lab AD ortamında hangi kimlik doğrulama yöntemlerini kullanıldığına bir bakış atalım.

Active Directory ortamında kullanılan kimlik doğrulama yöntemini öğrenmek için birkaç farklı yaklaşım var. Çünkü AD ortamında birden çok kimlik doğrulama protokolü kullanılabilir: NTLM, Kerberos, LDAP Bind vb.

Event Log Üzerinden Kontrol (Windows Güvenlik Logları)
AD kimlik doğrulama olayları genelde Domain Controller üzerindeki Security Event Log kayıtlarında tutulur. Özellikle aşağıdaki Event ID’leri önemli:

![image](https://github.com/user-attachments/assets/5ea3a149-d927-4af9-94f0-77268988c790)

Örnek:

•	Eğer 4768 ve 4769 görüyorsan: Kerberos kullanılmış.

•	Eğer 4776 görüyorsan: NTLM kullanılmış.

![image](https://github.com/user-attachments/assets/8f99c207-ca06-4a0f-a4e6-095f448070ab)

Burada ilk önce filtreleme yapalım. Yani eğer kerberos varlığını tespit etmek için ise bir filtreleme yapmamız gerekecek.

![image](https://github.com/user-attachments/assets/3a9a31f1-76b9-47f4-a880-af421e4d07c6)

Şekildeki gibi arama yaparak kerberos olduğunu doğrulayabiliriz.

![image](https://github.com/user-attachments/assets/033fded9-b0f8-4535-b18a-d65257e79826)

Şekilde görüldüğü gibi sistemde kerberos kullanıldığını doğrulamış oluk.

Diğer bir şekilde 

--nltest /dbflag:0x2080ffff

Log dosyası:

--%SystemRoot%\debug\netlogon.log

İş bitince ise bu komut diski şişirebilir ve bunu şunu kullanarak kapatalım.

--nltest /dbflag:0x0

Powershell üzerinde ise bir script yazarak bu işlemlere bakılabilir.

--Get-WinEvent -LogName Security -FilterXPath "*[System[(EventID=4624)]]" | Select-Object -First 10 | Format-List *

Çıktılarda buralara bakılmalıdır.

•	AuthenticationPackageName: Kerberos

•	AuthenticationPackageName: NTLM
