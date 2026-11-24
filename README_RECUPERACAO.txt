SOURCE RECUPERADA E ATUALIZADA — DISTRITO CITY
Esta source foi reconstruída a partir de um APK decompilado. Não é o projeto Android Studio/Gradle original; os fontes Java/Kotlin originais e a chave privada original de assinatura não estavam disponíveis.

ALTERAÇÕES
- O servidor Rio Clássico foi alterado para 92.119.165.177:9841 no perfil padrão do launcher, no manifesto v2 e na lista v3 de servidores.
- A seleção de Rio Novo e a DATA do jogo não foram alteradas pelo ajuste do endereço.
- Removidos a coroa e o texto da logo antiga em uma única parede do interior customizado da prefeitura. O material 18 de rio_int_pravo_08.dff usa a textura exclusiva distrito001, somente com tábuas de madeira, sem logo ou palavras.
- O objeto alvo (ID 5085) mantém DFF, posição e demais materiais. A textura compartilhada r_pr_logo11 foi preservada. Nenhum banco, fachada, outro prédio ou outro interior foi modificado.

RELEASE E DATA
- APK atualizado: https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.4-distrito-city/distrito-city-v2.27.4.apk
- Source da tag: https://github.com/afroditevtin-maker/distrito-city-oficial/archive/refs/tags/v2.27.4-distrito-city.zip
- A DATA continua no asset v2.27.3, sem alteração: angra-classico-v2.27.3-distrito-city.zip.
- SHA-256 da DATA: 06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a; tamanho compactado: 878309825 bytes; 2099 entradas; descompactada: 2036345061 bytes.

RECOMPILAÇÃO E VALIDAÇÃO
Com Java, Apktool, AAPT2, apksigner e keytool instalados, compile a partir da raiz do clone:
  apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk
O APK é assinado com certificado de teste e usa versionCode 227 / versionName 3.33. A assinatura original do aplicativo não estava disponível. A compilação, o alinhamento e a verificação criptográfica do APK foram feitos; não houve teste dinâmico em aparelho Android/ADB nem conexão ao servidor a partir de dispositivo.
