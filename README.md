# ProxyAndroid Modificado (Sem Tela de Login)

Este repositório contém o código descompilado e modificado do ProxyAndroid. A tela de login foi removida (bypass) para permitir acesso direto às funcionalidades.

## Como usar com GitHub Actions

1.  Crie um novo repositório no seu GitHub.
2.  Envie todos os arquivos desta pasta para o repositório.
3.  Vá em **Settings > Secrets and variables > Actions** e adicione os seguintes Secrets:
    *   `SIGNING_KEY`: Sua chave de assinatura em Base64 (gerada com `keystore`).
    *   `ALIAS`: O alias da sua chave.
    *   `KEY_STORE_PASSWORD`: A senha do seu keystore.
    *   `KEY_PASSWORD`: A senha da sua chave.
4.  O workflow será executado automaticamente em cada push para a branch `main`.
5.  O APK final estará disponível na aba **Actions** do seu repositório, em **Artifacts**.

## Modificações Realizadas

*   **Bypass de Login**: A lógica inicial da `MainActivity` foi alterada para pular a verificação de login e carregar diretamente a interface principal.
*   **Preservação de Funcionalidades**: Todas as bibliotecas nativas e recursos originais foram mantidos.
