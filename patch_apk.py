import os
import zipfile
import shutil
import glob
import subprocess

def patch_apk():
    apk_original = "PROXYANDROID_ORIGINAL.apk"
    apk_interno_modificado = "app/res/xml/jshshjkx.xml"
    apk_saida = "proxyandroid_unsigned.apk"

    if not os.path.exists(apk_original):
        print(f"Erro: {apk_original} não encontrado!")
        return

    # Limpeza inicial
    for f in glob.glob("*.apk"):
        if f != apk_original:
            os.remove(f)

    print(f"Criando cópia limpa do APK original...")
    shutil.copy(apk_original, apk_saida)

    # Remover o arquivo original do ZIP antes de adicionar o novo
    # O zipfile do Python não suporta deleção, então usamos o comando 'zip' do sistema
    print(f"Removendo arquivo original res/xml/jshshjkx.xml do APK...")
    subprocess.run(["zip", "-d", apk_saida, "res/xml/jshshjkx.xml"], check=True)

    print(f"Inserindo novo APK interno modificado em res/xml/jshshjkx.xml...")
    with zipfile.ZipFile(apk_saida, 'a') as zip_out:
        zip_out.write(apk_interno_modificado, "res/xml/jshshjkx.xml")

    # APAGAR o original para que o apksigner não tente assiná-lo também
    os.remove(apk_original)
    
    print(f"APK pronto para assinatura: {apk_saida}")

if __name__ == "__main__":
    patch_apk()
