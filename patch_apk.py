import os
import zipfile
import shutil
import glob
import subprocess

def run_command(command, cwd=None):
    print(f"Executando comando: {" ".join(command)}")
    result = subprocess.run(command, cwd=cwd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"Erro: {result.stderr}")
        raise Exception(f"Comando falhou: {" ".join(command)}")
    print(result.stdout)
    return result.stdout

def patch_apk():
    apk_original = "PROXYANDROID_ORIGINAL.apk"
    apk_interno_modificado = "app/res/xml/jshshjkx.xml"
    apk_saida = "proxyandroid_to_sign.apk"
    decompiled_dir = "decompiled_outer_apk"

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

    # 1. Decompilar o APK original
    print(f"Decompilando {apk_original}...")
    run_command(["apktool", "d", apk_original, "-o", decompiled_dir])

    # 2. Modificar MainActivity.smali da camada externa
    main_activity_smali_path = os.path.join(decompiled_dir, "smali_classes2", "com", "termux", "MainActivity.smali")
    print(f"Modificando {main_activity_smali_path}...")
    with open(main_activity_smali_path, "r") as f:
        content = f.read()
    
    # Forçar ZTFPH90O7Y22T para true no construtor
    content = content.replace(
        "    const/4 v0, 0x0\n\n    iput-boolean v0, p0, Lcom/termux/MainActivity;->ZTFPH90O7Y22T:Z",
        "    const/4 v0, 0x1\n\n    iput-boolean v0, p0, Lcom/termux/MainActivity;->ZTFPH90O7Y22T:Z"
    )

    with open(main_activity_smali_path, "w") as f:
        f.write(content)

    # 3. Corrigir layouts.xml
    layouts_xml_path = os.path.join(decompiled_dir, "res", "values", "layouts.xml")
    if os.path.exists(layouts_xml_path):
        print(f"Corrigindo {layouts_xml_path}...")
        with open(layouts_xml_path, "r") as f:
            content = f.read()
        content = content.replace(
            "<item type=\"layout\" name=\"activity_main\">ۦ/۠.xml</item>",
            "<item type=\"layout\" name=\"activity_main\">@layout/activity_main</item>"
        )
        with open(layouts_xml_path, "w") as f:
            f.write(content)

    # 4. Recompilar o APK externo modificado
    print(f"Recompilando o APK externo modificado...")
    run_command(["apktool", "b", decompiled_dir, "-o", "temp_base.apk"])

    # 5. Remover o arquivo original do ZIP (do temp_base.apk)
    print(f"Removendo arquivo original res/xml/jshshjkx.xml do temp_base.apk...")
    run_command(["zip", "-d", "temp_base.apk", "res/xml/jshshjkx.xml"])

    # 6. Inserir o novo arquivo interno
    print(f"Inserindo novo APK interno modificado no temp_base.apk...")
    with zipfile.ZipFile("temp_base.apk", 'a') as zip_out:
        zip_out.write(apk_interno_modificado, "res/xml/jshshjkx.xml")

    # 7. Renomear para o APK de saída
    os.rename("temp_base.apk", apk_saida)
    print(f"APK montado e pronto para alinhamento: {apk_saida}")

    # Limpar diretório decompilado
    shutil.rmtree(decompiled_dir)

if __name__ == "__main__":
    patch_apk()
