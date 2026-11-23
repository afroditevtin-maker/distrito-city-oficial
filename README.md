# Distrito City — source recuperada e DATA v2.27

Este repositório contém uma source Android recuperada por Apktool e a reprodução da correção visual solicitada para uma única parede do interior customizado da prefeitura no GTA San Andreas Android. O letreiro antigo, incluindo coroa e palavras, foi removido e substituído por tábuas de madeira sem texto. Nenhuma fachada de banco, outro prédio ou outro interior foi alterado.

## Entregas oficiais

A release corretiva pública [`v2.27.3-distrito-city`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27.3-distrito-city) contém:

- DATA completa: [`angra-classico-v2.27.3-distrito-city.zip`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.3-distrito-city/angra-classico-v2.27.3-distrito-city.zip)
- APK recompilado com allowlists v2/v3 sincronizadas com os manifestos da release e o hash da DATA: [`distrito-city-v2.27.3.apk`](https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.3-distrito-city/distrito-city-v2.27.3.apk)

A release anterior v2.27.2 publicou arquivos no repositório oficial, mas o APK ainda tinha uma allowlist interna incompatível com o nome e a URL novos. A v2.27.3 corrige essa divergência sem liberar hosts ou repositórios arbitrários. A DATA tem 2.099 entradas ZIP, 878.309.825 bytes compactados e 2.036.345.061 bytes descompactados. SHA-256: `06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a`.

## Escopo da DATA

O objeto alvo é `rio_int_pravo_08.dff` (ID 5085), material 18, na colocação única identificada em `data/maps/generic/interiors.IPL`. Esse binding usa a textura exclusiva `distrito001`; a textura compartilhada `r_pr_logo11` foi preservada, assim como a posição do objeto, o DFF, os índices e os demais materiais. Nenhum banco, fachada, outro prédio ou outro interior foi alterado.

Em relação ao pacote já corrigido na release anterior, somente os pixels em `texdb/txd/txd.etc.dat` e `texdb/txd/txd.etc.tmb` foram atualizados. A variante `txd.etc.360` permaneceu intacta. A source contém a textura 256×256 sem logo em `assets/overlays/distrito-city-wall-256.png` e scripts reproduzíveis em `tools/`, incluindo `apply_distrito_wall.py` para uma DATA base e `update_distrito_wall_texture.py` para uma DATA já remapeada.

## Recompilar a source

A source foi reconstruída a partir de um APK decompilado; ela não é o projeto Android Studio/Gradle original. Com Apktool, AAPT2, Java, `apksigner` e `keytool` instalados, execute no clone:

```bash
apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk
```

Assine o APK com uma chave de teste local (a chave original do aplicativo não estava disponível e nenhuma chave privada é incluída no repositório). Se o APK instalado estiver assinado por outro certificado, o Android poderá exigir a desinstalação da versão anterior antes da instalação.

## Limites de validação

O ZIP completo passou no teste CRC, e os hashes do pacote e dos registros ETC foram conferidos. A assinatura do APK foi verificada após a compilação. Não houve teste dinâmico em aparelho Android/ADB; portanto, não se afirma instalação, abertura do jogo ou verificação visual in-game em dispositivo.
