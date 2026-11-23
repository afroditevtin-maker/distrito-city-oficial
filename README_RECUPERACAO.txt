SOURCE RECUPERADA E ATUALIZADA — DISTRITO CITY
Esta source foi reconstruída a partir de um APK decompilado. Não é o projeto Android Studio/Gradle original; os fontes Java/Kotlin originais e a chave privada original de assinatura não estavam disponíveis.

ALTERAÇÃO
- Removidos a coroa e o texto da logo antiga em uma única parede do interior customizado da prefeitura. O material 18 de rio_int_pravo_08.dff usa a textura exclusiva distrito001, agora somente com tábuas de madeira, sem logo ou palavras.
- O objeto alvo (ID 5085) mantém DFF, posição e demais materiais. A textura compartilhada r_pr_logo11 foi preservada.
- Nenhum banco, fachada, outro prédio ou outro interior foi modificado.
- Em relação à DATA remapeada da release anterior, somente os pixels em texdb/txd/txd.etc.dat e texdb/txd/txd.etc.tmb mudaram. A variante txd.etc.360 permanece intacta.
- A DATA original foi mantida separada da cópia modificada. Consulte tools/apply_distrito_wall.py para reproduzir o remapeamento a partir de uma DATA base e tools/update_distrito_wall_texture.py para atualizar uma DATA já remapeada. O índice de integridade pode ser regenerado por tools/rebuild_integrity_manifest.py.

RELEASE E VALIDAÇÃO DA DATA
- Release oficial corretiva: https://github.com/afroditevtin-maker/distrito-city-oficial/releases/tag/v2.27.3-distrito-city
- DATA: angra-classico-v2.27.3-distrito-city.zip
- APK corrigido: distrito-city-v2.27.3.apk
- Tamanho compactado: 878309825 bytes; 2099 entradas; tamanho descompactado: 2036345061 bytes.
- SHA-256 da DATA: 06ec87e3786ac8cbfd64443c98f92e47c0807dc9962489bff1d0e22f23cd3d9a.
- O teste CRC do ZIP passou. O índice de integridade acompanha 1783 caminhos protegidos.
- A release v2.27.2 não deve ser usada: seu APK manteve uma allowlist antiga incompatível com os novos dados.

RECOMPILAÇÃO
Com Java, Apktool, AAPT2, apksigner e keytool instalados, compile a partir da raiz do clone:
  apktool b --use-aapt2 -a /usr/bin/aapt2 . -o /tmp/distrito-city-unsigned.apk
Assine o APK com uma chave de teste local, nunca incluída na source, e valide com `apksigner verify --verbose --print-certs`. O APK da release usa chave de teste, não a chave original do desenvolvedor. Se a assinatura instalada for diferente, pode ser necessário desinstalar a versão existente antes de instalar.

LIMITES DE VALIDAÇÃO
O ZIP e a assinatura do APK foram validados tecnicamente. Não houve teste dinâmico em aparelho Android/ADB; não se afirma instalação, abertura do jogo ou teste visual dentro de um dispositivo. O download depende da disponibilidade da release pública no GitHub e da conexão/CDN do dispositivo.
