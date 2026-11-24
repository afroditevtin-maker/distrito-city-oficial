# Distrito City — servidor clássico atualizado

Esta source Android reconstruída contém a correção visual de uma única parede do interior customizado da prefeitura e a atualização do endereço do servidor clássico. A coroa e o letreiro antigo foram removidos daquela parede e substituídos por madeira sem texto. Nenhuma outra fachada, prédio ou interior foi alterado.

## Entrega oficial

O APK com o servidor clássico atualizado está na release pública [`v2.27.4-distrito-city`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27.4-distrito-city): [`distrito-city-v2.27.4.apk`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.4-distrito-city/distrito-city-v2.27.4.apk). A source da mesma tag está disponível como [ZIP do código-fonte](https://github.com/afroditevtin-maker/distrito-city-oficial/archive/refs/tags/v2.27.4-distrito-city.zip).

O endpoint atualizado do servidor **Rio Clássico** é `92.119.165.177:9841`. A configuração foi sincronizada no perfil padrão do APK, na lista v3 e no manifesto v2. A seleção de Rio Novo e os dados da DATA não foram alterados. A DATA continua sendo o asset [`angra-classico-v2.27.3-distrito-city.zip`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.3-distrito-city/angra-classico-v2.27.3-distrito-city.zip), sem mudança de conteúdo; SHA-256 `06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a`.

## Escopo visual da DATA

O objeto alvo é `rio_int_pravo_08.dff` (ID 5085), material 18, na colocação única identificada em `data/maps/generic/interiors.IPL`. Esse binding usa a textura exclusiva `distrito001`; a textura compartilhada `r_pr_logo11` foi preservada, assim como a posição do objeto, o DFF, os índices e os demais materiais.

## Recompilar a source

Esta source foi reconstruída a partir de um APK decompilado; não é o projeto Android Studio/Gradle original. Com Apktool, AAPT2, Java, `apksigner` e `keytool` instalados, compile na raiz do clone:

```bash
apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk
```

O APK da release usa certificado de teste, não a chave original do aplicativo. Seu `versionCode` foi incrementado para 227 e `versionName` para 3.33. Caso o app instalado esteja assinado por outro certificado, o Android poderá exigir a desinstalação da versão anterior.

## Limites de validação

A compilação, o alinhamento e a assinatura do APK foram verificados. Os manifestos e o perfil do servidor foram conferidos. Não houve teste dinâmico em aparelho Android/ADB; portanto, não se afirma instalação, abertura do jogo ou conexão ao servidor em dispositivo.
