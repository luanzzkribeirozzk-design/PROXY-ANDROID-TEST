import os
import zipfile
import shutil

def patch_apk():
    # O APK original está em app/original/PROXYANDROID.apk (ou similar)
    # Mas como não queremos depender da estrutura do apktool, 
    # vamos assumir que o usuário pode subir o APK original ou usaremos o que temos.
    
    # Estratégia: Pegar o APK original, remover a assinatura e substituir o arquivo interno.
    apk_original = "PROXYANDROID_ORIGINAL.apk"
    apk_interno_modificado = "app/res/xml/jshshjkx.xml"
    apk_saida = "proxyandroid_unsigned.apk"

    if not os.path.exists(apk_original):
        print(f"Erro: {apk_original} não encontrado!")
        return

    print(f"Criando cópia do APK original...")
    shutil.copy(apk_original, apk_saida)

    with zipfile.ZipFile(apk_saida, 'a') as zip_out:
        # Remover assinatura antiga (META-INF)
        # Nota: zipfile não tem método direto para deletar, então reconstruímos se necessário
        # Mas para o GitHub Actions, vamos apenas sobrescrever e o sign-android-release cuida do resto.
        print(f"Inserindo APK interno modificado em res/xml/jshshjkx.xml...")
        zip_out.write(apk_interno_modificado, "res/xml/jshshjkx.xml")

    print(f"APK montado com sucesso: {apk_saida}")

if __name__ == "__main__":
    patch_apk()
