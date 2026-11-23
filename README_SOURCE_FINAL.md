# Source reconstruída — Distrito City

Esta source Android foi recuperada de um APK/decompilação disponível, usando manifest, recursos, assets, bibliotecas nativas e Smali. Não é o projeto Gradle/Android Studio original; os fontes Java/Kotlin originais e a chave original de assinatura não estavam disponíveis.

## Alteração implementada

Na DATA v2.27 foi removido o letreiro antigo (coroa e palavras) de uma única parede do interior customizado da prefeitura. O DFF `rio_int_pravo_08.dff`, material alvo 18, referencia a textura exclusiva `distrito001`, agora formada apenas por tábuas de madeira sem texto. A textura compartilhada `r_pr_logo11` permaneceu inalterada. Nenhum banco, outro prédio ou outro interior foi alterado.

O objeto tem ID 5085 e foi encontrado em uma única colocação do `interiors.IPL`. A posição e os dados do modelo não foram alterados. Em relação à DATA já corrigida pela release anterior, somente os pixels de `distrito001` foram atualizados nos arquivos `txd.etc.dat` e `txd.etc.tmb`.

A textura-fonte 256×256 está em `assets/overlays/distrito-city-wall-256.png`. `tools/apply_distrito_wall.py` reproduz o remapeamento exclusivo a partir de uma DATA base; `tools/update_distrito_wall_texture.py` atualiza somente os pixels da textura já existente em uma DATA previamente remapeada.

## Release e integridade

Release oficial corretiva: <https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27.3-distrito-city>.

O arquivo `angra-classico-v2.27.3-distrito-city.zip` contém 2.099 entradas, mede 878.309.825 bytes e descompacta para 2.036.345.061 bytes. SHA-256: `06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a`. O índice `assets/data-integrity-angra-classico.tsv` contém 1.783 caminhos protegidos e sua identidade corresponde ao SHA-256 do ZIP.

Os manifestos `assets/data-manifest-v2.json` e `assets/v3-configuracao/provedor.json`, além da seleção clássica em `GameIntegrity.smali`, foram atualizados para a identidade e URL da nova DATA. A correção v2.27.3 sincroniza as allowlists de nomes, release e asset tanto do manifesto v2 quanto do provedor v3, mantendo HTTPS e o caminho do repositório oficial restritos.

## Recompilação e limitações

Compile com Apktool 2.x e AAPT2. Exemplo: `apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk`. Assine separadamente com uma chave de teste não incluída na source. O APK da release foi compilado a partir do repositório oficial e verificado com `apksigner`; não usa a chave privada original do aplicativo.

O ZIP foi validado com teste CRC. Não houve teste dinâmico em dispositivo Android/ADB, portanto não se afirma que a instalação, abertura do jogo ou renderização in-game foi testada em aparelho. Caso a versão instalada esteja assinada por outro certificado, pode ser necessário desinstalá-la antes de instalar o APK recompilado.
