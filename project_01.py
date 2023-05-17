def giris():
    user_name = input("İsim: ")
    user_lname = input("Soyad: ")
    user_password = input("Şifre: ")

    kullanici_bilgileri = open("kullanici_bilgileri.txt", "r")
    
    for satir in kullanici_bilgileri:
        satir = satir.strip().split(",")
        name = satir[0]
        lname = satir[1]
        password = satir[2]
        if user_name == name and user_lname == lname and user_password == password:
            print("Giriş yapıldı")
            kullanici_bilgileri.close()
            return
        else:
            continue

    kullanici_bilgileri.close()
    print("Giriş bilgileri hatalı")

giris()