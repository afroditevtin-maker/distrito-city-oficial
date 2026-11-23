# Source reconstruída — Distrito City

Esta source Android foi recuperada de um APK/decompilação disponível, usando manifest, recursos, assets, bibliotecas nativas e Smali. Não é o projeto Gradle/Android Studio original; os fontes Java/Kotlin originais e a chave original de assinatura não estavam disponíveis.

## Alteração implementada

Na DATA v2.27, foi aplicado somente o overlay “DISTRITO CITY” à parede do interior da prefeitura. O DFF `rio_int_pravo_08.dff`, material alvo 18, referencia a textura exclusiva `distrito001`; a textura compartilhada `r_pr_logo11` foi preservada. Nenhum banco, outro prédio ou outro interior foi alterado.

Arquivos runtime modificados na DATA:

- `texdb/gta3.img`
- `texdb/txd/txd.txt`
- `texdb/txd/txd.etc.dat`
- `texdb/txd/txd.etc.toc`
- `texdb/txd/txd.etc.tmb`

A variante `txd.etc.360` permaneceu intacta. A source guarda a arte final em `assets/overlays/distrito-city-wall-256.png` e os scripts reprodutíveis em `tools/`.

## Release e integridade

Release oficial: <https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27-distrito-city>.

O arquivo `angra-classico-v2.27-distrito-city.zip` contém 2.099 entradas, mede 897.208.097 bytes e descompacta para 2.036.345.061 bytes. SHA-256: `dfbb3b0f1a2a319940fd7684daedabec03bd03eedeaf78a54566b3d7a8789469`. O índice `assets/data-integrity-angra-classico.tsv` contém 1.783 caminhos protegidos para esta DATA e sua identidade corresponde ao SHA-256 do ZIP.

Os manifestos `assets/data-manifest-v2.json` e `assets/v3-configuracao/provedor.json`, além da seleção clássica em `GameIntegrity.smali`, foram atualizados para corresponder à release e à identidade da DATA v2.27.

## Recompilação e limitações

Compile com Apktool 2.x e AAPT2. Exemplo: `apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk`. Assine separadamente com uma chave de teste não incluída na source. O APK da release foi compilado a partir do clone do repositório oficial e verificado com `apksigner`; não usa a chave privada original do aplicativo.

O ZIP foi validado com teste CRC. Não houve teste dinâmico em dispositivo Android/ADB, portanto não se afirma que a instalação, abertura do jogo ou renderização in-game foi testada em aparelho. Consulte também `README_RECUPERACAO.txt`.
