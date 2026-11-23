# Distrito City — source recuperada e DATA v2.27

Este repositório contém uma source Android recuperada por Apktool e a reprodução da alteração visual solicitada no interior da prefeitura de GTA San Andreas Android: um overlay/placa localizado naquela parede, com o texto **DISTRITO CITY**. Nenhuma fachada de banco, outro prédio ou outro interior foi alterado.

## Entregas oficiais

A release pública [`v2.27-distrito-city`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27-distrito-city) contém:

- DATA completa: [`angra-classico-v2.27-distrito-city.zip`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27-distrito-city/angra-classico-v2.27-distrito-city.zip)
- APK recompilado: [`distrito-city-v2.27.apk`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27-distrito-city/distrito-city-v2.27.apk)

A DATA tem 2.099 entradas ZIP, 897.208.097 bytes compactados e 2.036.345.061 bytes descompactados. SHA-256: `dfbb3b0f1a2a319940fd7684daedabec03bd03eedeaf78a54566b3d7a8789469`.

## Escopo da DATA

A alteração visual está restrita à parede do interior da prefeitura. O DFF `rio_int_pravo_08.dff`, material alvo 18, passou a apontar para a textura exclusiva `distrito001`; a textura compartilhada `r_pr_logo11` não foi alterada. Foram modificados somente estes cinco arquivos da DATA:

1. `texdb/gta3.img`
2. `texdb/txd/txd.txt`
3. `texdb/txd/txd.etc.dat`
4. `texdb/txd/txd.etc.toc`
5. `texdb/txd/txd.etc.tmb`

A variante `txd.etc.360` permaneceu intacta. O ZIP completo, e não um patch, é publicado como asset da release. A source inclui a arte aprovada em `assets/overlays/distrito-city-wall-256.png` e os scripts de reprodução/validação em `tools/`.

## Recompilar a source

A source foi reconstruída a partir de um APK decompilado; ela não é o projeto Android Studio/Gradle original. Com Apktool, AAPT2, Java, `apksigner` e `keytool` instalados, execute no clone:

```bash
apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk
```

Assine o APK usando uma chave de teste local (não incluída neste repositório) e valide a assinatura com `apksigner verify`. O APK da release foi compilado de um clone limpo deste repositório e usa uma chave de teste; ele não foi assinado com a chave privada original do aplicativo.

## Limites de validação

A DATA publicada teve o CRC do ZIP verificado e seus metadados/hash foram conferidos. A assinatura do APK foi verificada após a compilação. Não houve teste dinâmico em aparelho Android/ADB; portanto, não se afirma instalação, abertura do jogo ou teste in-game em dispositivo. Uma instalação assinada por certificado diferente pode exigir a desinstalação prévia de uma versão já instalada.
