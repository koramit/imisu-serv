# imisu server vagrant.

### Server มีอะไรบ้าง
1. Ubuntu server 16.04 64bits
2. Nginx
3. PHP 7.1 + extension สำหรับ Laravel 5.5 พร้อมด้วย php_imagick
4. MariaDB 10.2
5. Imagemagick
6. Ghostscript
7. ตอนนี้เอาแค่ 6 ก่อน

### Config อะไรบ้าง
1. `Vagrantfile` 
    * เปลี่ยน ip ได้
    * เปลี่ยนจาก private เป็น public ก็ได้ ถ้าอยากให้เครื่องอื่นๆ เข้ามาได้
    * เปลี่ยน ram ได้
    * เปลี่ยน cpu ได้
    * เปลี่ยนชื่อ VM ได้
    * เปลี่ยน provision script ได้ หากไม่ติด proxy ใช้ `provision.sh` ถ้าติดให้ใช้ provision_behide_proxy.sh
    * อย่างอื่นจะเปลี่ยนก็ได้ แต่อย่าเลย

2. `provision_behide_proxy.sh`
    * แก้ myUsername + myPassword
    * แก้ proxy URL
    * จะแก้ password สำหรับ root@MariaDB ก็ได้ แต่ว่างไม่ได้นะ

3. `index.php`
    * ถ้าแก้ password ของ root@MariaDB อย่าลืมมาแก้ใน code นี้ด้วยหากต้องการเช็คว่า vagrant ทำงานถูกต้องผ่านหน้าเว็บ

### วิธีใช้
1. ติดตั้ง virtualbox
2. ติดตั้ง vagrant
3. clone project นี้
4. ที่ terminal เข้าไปใน folder ของโปรเจค จากนั้นสั่ง `vagrant up`
5. มีแค่ 4 ข้อ

**เดี๋ยวคงมีเพิ่มมาเรื่อยๆ**
