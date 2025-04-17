LAB1 Kazanımları:

=>Teknik Kazanımlarım

*Active Directory Domain Services (AD DS) kurulumu ve yapılandırılması öğrenildi.

*DNS sunucusu rolü kurularak, ileri (Forward) ve geri (Reverse) zone kavramları uygulandı.

*A (Host), PTR ve SRV kayıtlarının oluşturulması, test edilmesi sağlandı.

*DNS Forwarder ve Root Hints yapılandırmaları gerçekleştirildi.

*DHCP rolü kuruldu ve yetkilendirildi (authorize).

*IP havuzu (scope) tanımlandı ve DHCP sunucusu otomatik IP dağıtır hale getirildi.

*DHCP Scope Options üzerinden DNS, gateway ve domain bilgileri doğru şekilde istemcilere atandı.

*DHCP ile DNS entegrasyonu sağlanarak, istemcilerin DNS’e otomatik olarak kayıt yapması başarıyla test edildi.

*Domain’e katılmayan cihazların DNS kayıtlarının elle tanımlanarak çözümleme yapılabilir hale getirilmesi sağlandı.

*Kurulumlar yapılar ve bizzat denendi

=>Bu Yapıda Oluşabilecek Olası Zafiyetler

*DNS zone transferi (AXFR) tüm sunuculara açık bırakılırsa veri sızıntısı riski oluşur.

*Nonsecure dynamic updates yapılandırılmışsa saldırganlar DNS’e sahte kayıt ekleyebilir.

*Yetkisiz DHCP sunucuları (Rogue DHCP) ağda IP dağıtarak sahte ağ geçidi tanımlayabilir.

*Firewall yapılandırmaları eksikse DNS ve DHCP hizmetlerine dış ağdan erişim sağlanabilir.

*DHCP üzerinden alınan kayıtların DNS’e kaydedilmemesi durumunda hostname-IP eşleşmesi yapılamaz.

*Domain controller üzerinde tüm kullanıcıların geniş yetkileri varsa yönetimsel zafiyet oluşur.

*Zafiyetler bizzat incelenip denendi vev kali linux ortamında ise bizzar doğrulandı.


=>Alınabilecek Güvenlik Önlemleri

*DNS zone transferi yalnızca tanımlı Secondary DNS sunucularına açılmalıdır.

*DNS dinamik güncellemeleri “Only secure updates” olarak yapılandırılmalıdır.

*DHCP sunucusu yalnızca Active Directory üzerinden yetkilendirilmiş olarak çalıştırılmalıdır.

*DHCP scope içerisinde MAC adresi filtreleme (allow list) uygulanmalıdır.

*Firewall üzerinde DNS (port 53) ve DHCP (UDP 67–68) sadece iç ağa açık olacak şekilde kısıtlanmalıdır.

*Domain Admin yetkileri sadece gerekli kullanıcılara verilmelidir.

*DNS ve DHCP log dosyaları düzenli olarak merkezi log sunucusuna (örneğin SIEM) yönlendirilmelidir.

*Bu kazanımların kurulum ve denenmesi sonucunda ise bu sonuçlara varılmıştır.

=>Yazılabilecek Resmî Politika Başlıkları

* DNS Güvenlik Politikası
* 
Tüm DNS zone transferleri yalnızca güvenilir sunuculara yapılmalıdır.

DNS dinamik kayıtlar sadece güvenli (secure) istemciler tarafından yapılmalıdır.

Root hints ve forwarder kullanımı kurum içi politikalarla belirlenmelidir.


*DHCP Yönetim Politikası

Tüm DHCP sunucuları domain’e bağlı olmalı ve yetkilendirilmiş olmalıdır.

DHCP Scope Options içerisinde doğru DNS, gateway ve domain adı atanmalıdır.

DHCP kayıtlarının DNS’e işlenmesi otomatikleştirilmeli, PTR kayıtları oluşturulmalıdır.

*Erişim ve Yetkilendirme Politikası

DNS ve DHCP yönetimi yalnızca yetkili sistem yöneticileri tarafından yapılmalıdır.

Her türlü yapılandırma değişikliği kaydedilmeli ve düzenli denetlenmelidir.

Domain Controller’a fiziksel ve ağ erişimi sıkı denetim altında tutulmalıdır.

*Bu başlıklar bir kaç yazı yazılıp, denenmiş olup sisteme yazılabilecek politikalar saptanmıştır ve sıralanmıştır.

![image](https://github.com/user-attachments/assets/5233fcfc-ef2f-40c9-8b45-8afe1fc743c5)
![image](https://github.com/user-attachments/assets/74f73b79-e6ba-4357-9646-3d0121ae3870)

*Topoloji yukarıdaki gibi oluşturulmuştur.

*Bir zafiyet çıktısın ise çıktısı verilmiştir.



