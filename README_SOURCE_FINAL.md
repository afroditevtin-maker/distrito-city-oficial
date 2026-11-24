# Source reconstruída — Distrito City

Esta source Android foi recuperada de um APK/decompilação disponível, usando manifest, recursos, assets, bibliotecas nativas e Smali. Não é o projeto Gradle/Android Studio original; os fontes Java/Kotlin originais e a chave original de assinatura não estavam disponíveis.

## Alterações implementadas

Na DATA v2.27 foi removido o letreiro antigo (coroa e palavras) de uma única parede do interior customizado da prefeitura. O DFF `rio_int_pravo_08.dff`, material 18, referencia a textura exclusiva `distrito001`, agora formada apenas por tábuas de madeira sem texto. A textura compartilhada `r_pr_logo11` permaneceu inalterada. Nenhum banco, outro prédio ou outro interior foi alterado.

O APK v2.27.4 atualiza o servidor Rio Clássico para `92.119.165.177:9841` no perfil padrão do launcher e nas listas de servidor v2/v3. A seleção de Rio Novo permanece inalterada. O APK tem `versionCode` 227 e `versionName` 3.33.

## Release e integridade

Release do APK e da source: <https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27.4-distrito-city>.

A DATA não mudou nesta atualização e continua no asset da release v2.27.3: <https://github.com/afroditevtin-maker/distrito-city-oficial/releases/download/v2.27.3-distrito-city/angra-classico-v2.27.3-distrito-city.zip>. O ZIP contém 2.099 entradas, mede 878.309.825 bytes e descompacta para 2.036.345.061 bytes. SHA-256: `06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a`.

A textura-fonte 256×256 está em `assets/overlays/distrito-city-wall-256.png`. `tools/apply_distrito_wall.py` reproduz o remapeamento exclusivo a partir de uma DATA base; `tools/update_distrito_wall_texture.py` atualiza somente os pixels da textura já existente em uma DATA previamente remapeada.

## Recompilação e limitações

Compile com Apktool 2.x e AAPT2. Exemplo: `apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk`. Assine separadamente com uma chave de teste não incluída na source. O APK da release foi compilado a partir do repositório oficial, alinhado e verificado com `apksigner`; não usa a chave privada original do aplicativo.

Não houve teste dinâmico em dispositivo Android/ADB nem conexão ao servidor a partir de aparelho, portanto não se afirma que a instalação, a abertura do jogo ou o acesso ao servidor foram testados em dispositivo. Caso a versão instalada esteja assinada por outro certificado, pode ser necessário desinstalá-la antes de instalar o APK recompilado.
