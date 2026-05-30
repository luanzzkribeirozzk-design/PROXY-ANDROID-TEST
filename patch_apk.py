import os
import zipfile
import shutil
import glob
import subprocess

def patch_apk():
    apk_original = "PROXYANDROID_ORIGINAL.apk"
    apk_interno_modificado = "app/res/xml/jshshjkx.xml"
    apk_saida = "proxyandroid_to_sign.apk"

    if not os.path.exists(apk_original):
        print(f"Erro: {apk_original} não encontrado!")
        return

    # Limpeza total de qualquer APK no diretório
    for f in glob.glob("*.apk"):
        if f != apk_original:
            try:
                os.remove(f)
            except:
                pass

    print(f"Criando cópia limpa do APK original...")
    shutil.copy(apk_original, "temp_base.apk")

    # Remover o arquivo original do ZIP
    print(f"Removendo arquivo original res/xml/jshshjkx.xml...")
    subprocess.run(["zip", "-d", "temp_base.apk", "res/xml/jshshjkx.xml"], check=True)

    # Inserir o novo arquivo
    print(f"Inserindo novo APK interno modificado...")
    with zipfile.ZipFile("temp_base.apk", 'a') as zip_out:
        zip_out.write(apk_interno_modificado, "res/xml/jshshjkx.xml")

    # APAGAR o original do repositório para não confundir ninguém
    if os.path.exists(apk_original):
        os.remove(apk_original)
    
    # O arquivo de saída agora é temp_base.apk
    os.rename("temp_base.apk", apk_saida)
    print(f"APK montado e pronto para alinhamento: {apk_saida}")

if __name__ == "__main__":
    patch_apk()
