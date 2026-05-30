import os
import zipfile
import shutil
import glob

def patch_apk():
    apk_original = "PROXYANDROID_ORIGINAL.apk"
    apk_interno_modificado = "app/res/xml/jshshjkx.xml"
    apk_saida = "proxyandroid_unsigned.apk"

    if not os.path.exists(apk_original):
        print(f"Erro: {apk_original} não encontrado!")
        return

    # Remover qualquer APK antigo para não confundir o apksigner
    for f in glob.glob("*.apk"):
        if f != apk_original:
            os.remove(f)

    print(f"Criando cópia do APK original...")
    shutil.copy(apk_original, apk_saida)

    print(f"Inserindo APK interno modificado em res/xml/jshshjkx.xml...")
    with zipfile.ZipFile(apk_saida, 'a') as zip_out:
        zip_out.write(apk_interno_modificado, "res/xml/jshshjkx.xml")

    # APAGAR o original para que o apksigner não tente assiná-lo também
    os.remove(apk_original)
    
    print(f"APK pronto para assinatura: {apk_saida}")

if __name__ == "__main__":
    patch_apk()
